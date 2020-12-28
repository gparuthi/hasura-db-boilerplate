db:
	docker-compose down --remove-orphans
	docker-compose up -d
	sleep 3
	yarn hasura migrate apply
	yarn hasura metadata apply