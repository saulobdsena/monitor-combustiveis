.PHONY: up down logs psql

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

# $$ faz a variável ser expandida dentro do container
psql:
	docker compose exec postgres sh -c 'psql -U "$$POSTGRES_USER" -d "$$POSTGRES_DB"'
