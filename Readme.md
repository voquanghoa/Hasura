# Read me

## Setup and run on Docker

- Build the images and run with changes detection and reload for Frontend/FileServer

```bash
startup.sh
```

Then we can access:

- Frontend [http://localhost:3000](http://localhost:3000)
- Hasura backend [http://localhost:8080](http://localhost:8080)

# Useful commands

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
