# ▸ Relatório 02 - Linguagem Lua ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Crie um programa em Lua que solicite e leia três números inteiros: 1. M: o expoente inicial 2. N: o expoente final (assuma que M <= N) 3. base: a base da potenciação. Escreva uma função chamada gerarTabelaPotencias(inicio, fim, base) que receba esses três valores como parâmetros. A função deve percorrer todos os números do intervalo de inicio até fim (inclusive) e exibir a base elevada a cada um dos expoentes nesse intervalo."`

#### Resolução:

* [Ex1](EX1_relatorio2.lua)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite o expoente inicial (M): 
2
Digite o expoente final (N): 
5
Digite a base: 
3
```

**Saída:**

```text
3 ^ 2 = 9
3 ^ 3 = 27
3 ^ 4 = 81
3 ^ 5 = 243
```

---

### 02. Enunciado:

`"Crie um programa em Lua que peça ao usuário a quantidade N de elementos de uma tabela e, em seguida, leia esses N números inteiros para preenchê-la. Depois de preencher a tabela, solicite ao usuário um número inteiro adicional X (o número a ser buscado). Escreva uma função chamada contarOcorrencias(tabela, alvo) que receba a tabela e o valor X como parâmetros. A função deve percorrer todos os elementos da tabela e retornar apenas a quantidade de vezes que o número X aparece nela."`

#### Resolução:

* [Ex2](EX2_relatorio2.lua)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite a quantidade de elementos (N):
5
Digite o elemento 1:
10
Digite o elemento 2:
7
Digite o elemento 3:
10
Digite o elemento 4:
4
Digite o elemento 5:
10
Digite o número X a ser buscado:
10
```

**Saída:**

```text
O número 10 aparece 3 vez(es) na tabela.
```
--- 

### 03. Enunciado:

`"Crie um programa em Lua que solicite ao usuário a quantidade N de elementos de uma tabela e, em seguida, leia esses N números inteiros para preenchê-la. Depois de preencher a tabela, peça ao usuário para digitar um número inteiro que servirá como limite (K). Escreva uma função chamada filtrarMaiores(tabela, limite) que receba a tabela original e o limite K como parâmetros. A função deve percorrer a tabela e retornar uma nova tabela contendo apenas os números que forem estritamente maiores que K. Ao final, imprima os elementos dessa nova tabela no programa principal."`

#### Resolução:

* [Ex3](EX3_relatorio2.lua)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite a quantidade de elementos (N):
5
Digite o elemento 1:
12
Digite o elemento 2:
5
Digite o elemento 3:
20
Digite o elemento 4:
8
Digite o elemento 5:
15
Digite o valor do limite (K):
10
```

**Saída:**

```text
--- Elementos maiores que 10 ---
12
20
15
```

---

### 04. Enunciado:

`"Crie um programa em Lua que contenha obrigatoriamente subfunções dedicadas para cada uma das seguintes operações sobre dois números: calcularMedia(a, b): retorna a média aritmética entre os dois valores; encontrarMaior(a, b): retorna o maior valor entre os dois números; calcularDiferencaAbsoluta(a, b): retorna a diferença positiva entre os números (ou seja, |a - b|). Crie uma função principal chamada analisarNumeros(n1, n2, operacao) que receba dois números e um texto indicando a operação desejada ("media", "maior" ou "diferenca"). A função principal deve chamar a subfunção correspondente e retornar o resultado calculado. Caso a operação informada seja inválida, retorne a mensagem de erro: "Operação inválida!"."`

#### Resolução:

* [Ex4](EX4_relatorio2.lua)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite o primeiro número:
15
Digite o segundo número:
25
Digite a operação (media, maior ou diferenca)
diferenca
```

**Saída:**

```text
Resultado: 10
```

---