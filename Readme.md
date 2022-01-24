# Read me

## Setup and run on Docker

- Build the images and run with changes detection and reload for Frontend

```bash
docker-compose up -d --build
```

Then we can access:

- Frontend [http://localhost:4200](http://localhost:4200)
- Hasura backend [http://localhost:8080](http://localhost:8080)

To edit the data.json file, execute the heroku CLI on the file-server 

```bash
nano data.json
```

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
