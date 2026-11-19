---
name: explorar-csv
description: Perfila um CSV da ANP em data/landing sem alterá-lo, levantando encoding, separador, colunas, formatos e problemas. Use ao inspecionar um arquivo novo da fonte.
argument-hint: "[caminho do csv]"
---

# Explorar CSV

Arquivo: $ARGUMENTS. Sem argumento, liste `data/landing/` e pergunte qual analisar. Nunca modifique o arquivo original.

Meça no arquivo, sem presumir o formato:

1. Tamanho, número de linhas, BOM e encoding (`file -bi` e tentativa real de decodificação).
2. Separador, aspas e quantidade de campos por linha; aponte linhas irregulares.
3. Nomes exatos das colunas.
4. Para cada coluna: nulos, vazios, cardinalidade, exemplos e tipo provável.
5. Formato de datas e números (como vírgula decimal), com valores mínimo e máximo.
6. Problemas: duplicatas no grão produto + posto + data, variações de texto, acentos, preços implausíveis e colunas totalmente vazias.

Entregue um resumo com tabela de colunas, problemas encontrados e implicações para `raw` e `staging`. Separe o que foi medido do que é hipótese.
