-- Executado pelo Postgres apenas na primeira criação do banco (volume vazio).
-- IF NOT EXISTS mantém o script idempotente.

-- Camadas do pipeline ELT
CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS marts;

-- Remove acentos na normalização de texto da camada staging
CREATE EXTENSION IF NOT EXISTS unaccent;
