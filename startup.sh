docker-compose up -d --build

sleep 3

hasura metadata apply
hasura migrate apply --database-name postgres
hasura metadata reload
hasura seed apply --database-name postgres
