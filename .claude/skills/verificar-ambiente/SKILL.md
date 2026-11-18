---
name: verificar-ambiente
description: Diagnostica o ambiente local do monitor-combustiveis (Docker, portas, Postgres, schemas e Metabase). Use quando o ambiente não subir ou antes de começar uma etapa.
---

# Verificar ambiente

Somente leitura: não altere arquivos, não pare containers e nunca rode `docker compose down -v`. Não imprima o conteúdo do `.env`.

1. Confirme que `.env` existe e define `POSTGRES_USER`, `POSTGRES_PASSWORD`, `POSTGRES_DB` e `POSTGRES_PORT`, verificando só os nomes.
2. Valide o compose: `docker compose config -q`.
3. Veja os serviços: `docker compose ps -a`.
4. Se os serviços estiverem parados, veja se as portas estão livres: `ss -ltn` para `POSTGRES_PORT` e 3000.
5. Confira o banco: `docker compose exec -T postgres sh -c 'psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "\dn" -c "\dx"'`. Esperado: schemas `raw`, `staging`, `marts` e extensão `unaccent`.
6. Confira o Metabase: `curl -s localhost:3000/api/health`. Esperado: `{"status":"ok"}`.

Termine com uma tabela de item, status e correção sugerida. Para falhas, consulte `docker compose logs --tail=50 <serviço>`.
