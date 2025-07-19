.PHONY: up down re full_clean

up:
	docker-compose up --build -d

down:
	docker-compose down

full_clean:
	docker-compose down --volumes --remove-orphans
	docker system prune -f
	docker volume prune -f
	docker network prune -f

re:
	docker-compose down --volumes --remove-orphans
	docker-compose up --build -d

logs:
	docker-compose logs -f

shell:
	docker exec -it safe_place sh