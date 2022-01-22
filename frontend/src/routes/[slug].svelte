<script context="module" lang="ts">
    export const prerender = true;
</script>

<svelte:head>
    <title>Helps</title>
</svelte:head>

<div class="technology">
    <strong>{title}</strong>
    <br/>
    <br/>
    {description}
</div>

<script lang="ts">
    import { page } from '$app/stores';
    import {fetchFindTechnology} from "./_api";

    let title = ''
    let description = ''
    $: slug = $page.params.slug

    async function loadData(slug: string) {
        if (!slug) return
        const data = await fetchFindTechnology(slug)

        if (!data.data.long_tails) {
            title = 'Not found';
            return;
        }

        const id = data.data.long_tails[0].json_id
        const entry = data.data.technologies.find(x => x.id === id);

        title = entry.title
        description = entry.description
    }

    $: {
        void loadData(slug)
    }
</script>

<style>
    .technology {
        margin: 40px auto;
        font-size: 20px;
    }
</style>