# Read me

- Build the app and run in docker

```
docker-compose up -d --build
```

- Frontend [http://localhost:4200](http://localhost:4200)
- Hasura backend [http://localhost:8080](http://localhost:8080)


# List commands

## Docker commands

```
docker-compose up -d --build
docker-compose down --volumes

```

## Hasura commands

```
hasura metadata export
hasura metadata apply

hasura migrate create "init" --from-server --database-name postgres
hasura migrate apply --database-name postgres
```

## Frontend commands

```
npm install
npx svelte-kit dev --host --port 4200
```