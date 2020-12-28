db:
	docker-compose down --remove-orphans
	docker-compose up -d
	yarn migrate
	yarn metadata