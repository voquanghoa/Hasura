FROM hasura/graphql-engine:v2.1.1.cli-migrations-v3

ENV PG_DATABASE_URL="postgres://postgres:postgrespassword@postgres:5432/postgres"
ENV HASURA_GRAPHQL_DATABASE_URL=$PG_DATABASE_URL
ENV HASURA_GRAPHQL_METADATA_DIR="metadata"
ENV HASURA_GRAPHQL_ENABLE_CONSOLE="true"
ENV HASURA_GRAPHQL_DEV_MODE="true"
ENV HASURA_GRAPHQL_ENABLED_LOG_TYPES="startup, http-log, webhook-log, websocket-log, query-log"

WORKDIR /usr/src/app

COPY ./config.yaml .
