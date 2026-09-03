# ▸ Relatório 03 - Linguagem Rust ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Crie uma função chamada fn validar_placa(placa: &str) -> bool. A função deve retornar true apenas se a string  enviada atender a todos os seguintes critérios: Ter pelo menos 7 caracteres de comprimento. Conter pelo menos 4 letras maiúsculas (c.is_ascii_uppercase()). Conter pelo menos 2 números (c.is_numeric()). Na main, peça ao usuário para digitar a placa de um veículo. Use a estrutura loop (com break) para continuar pedindo a placa até que a função validar_placa retorne true. Quando uma placa válida for informada, exiba a mensagem "Placa cadastrada no sistema!" e saia do laço. Dica: Lembre-se de remover a quebra de linha \n da leitura do teclado usando .trim()"`

#### Resolução:

* [Ex1](EX1_relatorio3.rs)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite a placa do veículo: abc12
Placa inválida. Tente novamente!
Digite a placa do veículo: ABC1234
Placa cadastrada no sistema!
```

**Saída:**

```text
Placa cadastrada no sistema!
```

---

### 02. Enunciado:

`"Crie uma função chamada fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool. A função deve retornar true apenas se a diferença absoluta entre o palpite do usuário e o número secreto for de no máximo 5 unidades (ou seja, |palpite - numero_secreto| <= 5). Na main: Defina um número secreto hardcoded (ex: let numero_secreto: i32 = 13;). Utilizando a estrutura loop, peça repetidamente para o usuário digitar seu palpite. Se o palpite estiver fora da tolerância (função retorna false), exiba "Você passou longe! Tente novamente." e continue no laço. Se o palpite estiver dentro da tolerância de 5 unidades (função retorna true): Calcule e exiba a distância exata em que ele ficou do alvo (ex: "Você acertou! Ficou a apenas X unidades do número secreto!"). Encerre o laço de repetição (break)"`

#### Resolução:

* [Ex2](EX2_relatorio3.rs)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite seu palpite: 10
Você passou longe! Tente novamente.
Digite seu palpite: 50
Você passou longe! Tente novamente.
Digite seu palpite: 44
Parabéns, você acertou o alvo!
Você ficou a apenas 2 unidade(s) do número secreto
(42)
```

**Saída:**

```text
Parabéns, você acertou o alvo!
Você ficou a apenas 2 unidade(s) do número secreto (42)
```
--- 

### 03. Enunciado:

`"Crie um programa em Lua que solicite ao usuário a quantidade N de elementos de uma tabela e, em seguida, leia esses N números inteiros para preenchê-la. Depois de preencher a tabela, peça ao usuário para digitar um número inteiro que servirá como limite (K). Escreva uma função chamada filtrarMaiores(tabela, limite) que receba a tabela original e o limite K como parâmetros. A função deve percorrer a tabela e retornar uma nova tabela contendo apenas os números que forem estritamente maiores que K. Ao final, imprima os elementos dessa nova tabela no programa principal."`

#### Resolução:

* [Ex3](EX3_relatorio3.rs)

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

`"Crie uma função chamada fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32). Esta função deve receber três números inteiros e não retornar nenhum valor. Dentro da função, use um laço for para iterar de limite_inferior até limite_superior (inclusive). Em cada iteração, imprima o número apenas se o seu último dígito for igual ao digito informado (dica: você pode obter o último dígito de um número positivo usando o operador de resto numero % 10). Na main, peça ao usuário para digitar: O dígito final desejado (de 0 a 9). O limite inferior. O limite superior. Em seguida, chame a função imprimir_terminados_em passando os três valores fornecidos"`

#### Resolução:

* [Ex4](EX4_relatorio3.rs)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Exemplo de Execução:
Digite o dígito final desejado (0 a 9): 7
Digite o limite inferior: 10
Digite o limite superior: 40
```

**Saída:**

```text
--- Números no intervalo terminados em 7 ---
17
27
37
```

---