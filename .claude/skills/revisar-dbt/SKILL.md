---
name: revisar-dbt
description: Revisa modelos dbt do monitor-combustiveis quanto a grão, testes, documentação e convenções. Use ao criar ou alterar modelos em staging ou marts.
argument-hint: "[modelo ou pasta]"
---

# Revisar dbt

Alvo: $ARGUMENTS. Sem argumento, revise os modelos alterados em relação à `main`. Não altere arquivos: relate os achados.

Verifique:

1. **Camadas:** staging lê de `source()` e só limpa e tipa; marts usam `ref()`; nada de nomes de tabela fixos.
2. **Grão:** `fct_precos` tem uma linha por produto, posto e data de coleta, com teste de unicidade nessa combinação.
3. **Chaves:** dimensões têm chave `unique` e `not_null`; chaves da fato têm `relationships`.
4. **Qualidade:** `accepted_values` onde o domínio é fechado e faixa plausível de preço.
5. **Tipos:** vírgula decimal convertida para `numeric`, datas como `date`, texto normalizado e nomes em snake_case.
6. **Documentação:** descrição em todos os modelos e colunas.
7. **Joins:** nenhum join pode multiplicar linhas ou descartá-las sem intenção.

Se houver projeto dbt configurado, rode `dbt build --select <alvo>` e mostre o resultado. Liste os achados por severidade, com arquivo e linha.
