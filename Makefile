dev:
	cat .env
	docker-compose down --remove-orphans
	docker-compose up -d
	sleep 3
	yarn hasura migrate apply
	yarn hasura metadata apply

stag:
	echo "Make sure to update env file"
	cat .env
	docker-compose down --remove-orphans
	docker-compose up -d graphql-engine
	sleep 3
	yarn hasura migrate apply
	yarn hasura metadata apply
