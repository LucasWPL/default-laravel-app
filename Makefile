build:
	cp .env.example .env
	docker compose up -d || docker-compose up -d
	docker exec -t php sh -c "composer install && php artisan key:generate && php artisan migrate:fresh --seed"
	exit
	# docker exec -t node sh -c "npm install && npm run dev"
	docker compose down || docker-compose down
up:
	docker compose up || docker-compose up
m:
	docker exec -t php sh -c "php artisan migrate:fresh --seed"
t:
	docker exec -t php sh -c "php artisan tinker"
# w:
# 	docker exec -t node sh -c "npm run watch"
php:
	docker exec -it php sh
# node:
# 	docker exec -it node sh
db:
	docker exec -it mysql sh
down:
	docker compose down || docker-compose down
