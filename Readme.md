# Read me

- Build the app and run in docker

```bash
docker-compose up -d --build
```

Then we can access:

- Frontend [http://localhost:4200](http://localhost:4200)
- Hasura backend [http://localhost:8080](http://localhost:8080)

# Discussion

Currently, everytime user clicks the link, the page will do a request to get the data and the response will looks like

```json
{
    "data": {
        "long_tails": [
            {
                "json_id": 1
            }
        ],
        "technologies": [
            {
                "description": "A JavaScript Front End Framework",
                "id": 1,
                "title": "Svelte"
            },
            {
                "description": "An open-source SQL database",
                "id": 2,
                "title": "Postgres"
            },
            {
                "description": "An auto-generated GraphQL API",
                "id": 3,
                "title": "Hasura"
            }
        ]
    }
}
```

Notice that all the technologies will be loaded, only the long_tails is filtered by name.
If we use a traditional API, the response can be simpler

```json
{
    "description": "A JavaScript Front End Framework",
    "id": 1,
    "title": "Svelte"
}
```

Unfortunately, Hasura doesn't support anything to filter data from Action.

# List commands

## Docker commands

```bash
docker-compose up -d --build
docker-compose down --volumes

```

## Hasura commands

```bash
hasura metadata export
hasura metadata apply

hasura migrate create "init" --from-server --database-name postgres
hasura migrate apply --database-name postgres
```

## Frontend commands

```bash
npm install
npx svelte-kit dev --host --port 4200
```