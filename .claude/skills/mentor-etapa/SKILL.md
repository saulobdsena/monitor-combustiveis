---
name: mentor-etapa
description: Conduz uma etapa do projeto monitor-combustiveis em modo de ensino. Use quando o usuário pedir para começar, continuar ou aprender uma etapa do pipeline.
argument-hint: "[número da etapa]"
---

# Mentor de etapa

Etapas, nesta ordem: 1) Docker + estrutura, 2) Exploração da fonte, 3) Ingestão para raw, 4) Staging no dbt, 5) Marts / esquema estrela, 6) Testes, 7) Dashboard + README.

Etapa pedida: $ARGUMENTS. Sem argumento, descubra a etapa atual pelo estado do repositório e pelo git log.

## Como conduzir

1. Confira o que já existe no repositório antes de ensinar.
2. Explique em português os conceitos de engenharia de dados da etapa e por que importam aqui.
3. Liste tarefas pequenas, com dicas e esqueletos com lacunas. Não entregue a solução completa, a menos que o usuário peça que você a escreva.
4. Diga como verificar cada resultado, com os comandos e a saída esperada.
5. Sugira commits pequenos no formato Conventional Commits.
6. Proponha 1 exercício curto.
7. Pare e espere o usuário dizer "próxima etapa".

Nunca presuma URLs, colunas, separador ou encoding da ANP: confirme na fonte.
