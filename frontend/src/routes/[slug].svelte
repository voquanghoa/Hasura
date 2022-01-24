<script context="module" lang="ts">
    export const prerender = true;
</script>

<svelte:head>
    <title>Technology</title>
</svelte:head>

<div class="technology">
    {#if apiState === ApiState.LOADING }
        <span>Loading...</span>
    {/if}

    {#if apiState === ApiState.SUCCESS }
        <strong class="title">
            {technology.title}
        </strong>
        <span>
            {technology.description}
        </span>
    {/if}

    {#if apiState === ApiState.FAILED }
        <span>Sorry, the technology couldn't be loaded.</span>
    {/if}
</div>

<script lang="ts">
    import { page } from '$app/stores'
    import { fetchFindTechnology } from "../services/_api"
    import { ApiState } from "../models/api.state"
    import { emptyTechnology } from "../models/technology";

    let apiState = ApiState.NONE
    let technology = emptyTechnology

    $: slug = $page.params.slug

    async function loadData(slug: string) {
        if (!slug) return
        try {
            apiState = ApiState.LOADING
            const response = await fetchFindTechnology(slug)

            if (!response.data.long_tails) {
                apiState = ApiState.FAILED
                return;
            }

            const id = response.data.long_tails[0].json_id
            technology = response.data.technologies.find(x => x.id === id);
            apiState = ApiState.SUCCESS
        } catch {
            apiState = ApiState.FAILED
        }
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

    .technology .title {
        display: block;
        margin-bottom: 40px;
    }
</style>