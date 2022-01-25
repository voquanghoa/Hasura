docker-compose up -d --build

bash -c 'while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://localhost:8080/healthz)" != "200" ]]; do sleep 5; done'

hasura metadata apply
hasura migrate apply --database-name postgres
hasura metadata reload
hasura seed apply --database-name postgres
