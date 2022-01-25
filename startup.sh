docker-compose up -d --build

hasura metadata apply
hasura migrate apply --database-name postgres
hasura metadata reload
hasura seed apply --database-name postgres
