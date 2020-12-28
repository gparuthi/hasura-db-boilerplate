db:
	docker-compose down --remove-orphans
	docker-compose up -d
	yarn hasura migrate apply
	yarn hasura metadata apply