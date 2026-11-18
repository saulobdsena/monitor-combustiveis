---
name: entregar
description: Prepara a branch atual para entrega, com verificações, commits pequenos e Pull Request.
disable-model-invocation: true
argument-hint: "[resumo da mudança]"
---

# Entregar mudança

Resumo informado: $ARGUMENTS

1. Rode `git status -sb` e `git diff`. Se estiver na `main`, crie uma branch `feat/`, `fix/`, `chore/` ou `docs/` antes de commitar.
2. Bloqueie a entrega se houver segredo: `.env` rastreado, senha, token ou chave no diff. Confirme com `git check-ignore .env`.
3. Rode as verificações que existirem: `make test`, `dbt build` e `docker compose config -q`. Relate falhas com a saída; não siga adiante com falhas.
4. Agrupe as mudanças em commits atômicos no formato `tipo(escopo): resumo`. Adicione arquivos pelo nome, nunca com `git add -A`.
5. Mostre os commits e o que será publicado, e peça confirmação antes de `git push` e de `gh pr create`.
6. No PR, descreva o que mudou, como foi verificado e o que ficou pendente. Pendências abertas significam que o PR não está pronto para merge: avise o usuário.
