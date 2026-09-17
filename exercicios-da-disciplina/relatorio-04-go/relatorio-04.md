# ▸ Relatório 04 - Linguagem Go ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Crie uma função chamada ValidarCodigoRastreio(codigo string) (bool, string). O código de rastreio de um pacote só será aceito se possuir exatamente 10 caracteres. Se tiver exatamente 10 caracteres, a função deve retornar true e a mensagem "Código de rastreio registrado no sistema!". Caso contrário, deve retornar false e a mensagem "Erro: O código de rastreio deve ter exatamente 10 caracteres.". Na main, utilize um laço for para solicitar o código ao usuário repetidamente até que a função retorne true. A cada tentativa inválida, exiba a mensagem de erro retornada pela função."`

#### Resolução:

* [Ex1](EX1_relatorio4.go)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite o código de rastreio: BR123
Erro: O código de rastreio deve ter exatamente 10
caracteres.
Digite o código de rastreio: PAQUETE1234
Erro: O código de rastreio deve ter exatamente 10
caracteres.
Digite o código de rastreio: AA123456BR
Código de rastreio registrado no sistema!
```

**Saída:**

```text
Código de rastreio registrado no sistema!
```

---

### 02. Enunciado:

`"Faça um programa em Go que leia 3 valores inteiros representando a quantidade de vendas efetuadas por um vendedor em 3 trimestres consecutivos. Primeiro, verifique se a soma total das vendas atinge o mínimo exigido pela empresa (pelo menos 100 unidades no total). Caso a soma seja menor que 100, exiba a mensagem de erro: "Meta mínima anual não atingida!". Caso atinja a meta mínima, utilize um laço switch (sem expressão) para classificar o bônus do vendedor com base na soma total: Categoria Top Seller: soma maior ou igual a 250 unidades. Categoria Sênior: soma entre 180 e 249 unidades. Categoria Pleno: soma entre 100 e 179 unidades."`

#### Resolução:

* [Ex2](EX2_relatorio4.go)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Exemplo de Execução:
Digite as vendas do 1º trimestre: 40
Digite as vendas do 2º trimestre: 35
Digite as vendas do 3º trimestre: 50
Total de vendas: 125 unidades
Classificação: Categoria Pleno
```

**Saída:**

```text
Total de vendas: 125 unidades
Classificação: Categoria Pleno
```
--- 

### 03. Enunciado:

`"Crie uma função chamada func gerarEscalaPlantao(n int). Incluindo: um sistema de TI precisa organizar uma escala de plantão técnico que ocorre a cada 4 dias, iniciando no dia 1 do mês; recebimento da quantidade de plantões desejada (n int) e uso de um laço for para calcular e exibir os dias do mês em que os plantões acontecerão (ex: 1º plantão no Dia 1, 2º plantão no Dia 5, 3º plantão no Dia 9, e assim por diante); na main, um pedido ao usuário para digitar a quantidade de plantões que deseja gerar e chame a função gerarEscalaPlantao."`

#### Resolução:

* [Ex3](EX3_relatorio4.go)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite a quantidade de plantões necessários: 5
--- Escala de Plantão Técnico ---
Plantão 1: Dia 1 do mês
Plantão 2: Dia 5 do mês
Plantão 3: Dia 9 do mês
Plantão 4: Dia 13 do mês
Plantão 5: Dia 17 do mês
```

**Saída:**

```text
--- Escala de Plantão Técnico ---
Plantão 1: Dia 1 do mês
Plantão 2: Dia 5 do mês
Plantão 3: Dia 9 do mês
Plantão 4: Dia 13 do mês
Plantão 5: Dia 17 do mês
```

---

### 04. Enunciado:

`"Crie uma função chamada func validarIngresso(setor string, codigo int) bool. A função deve utilizar uma estrutura condicional para verificar se o setor é igual a "VIP" E se o codigo do ingresso é igual a 2026. A função deve retornar true apenas se ambas as condições forem verdadeiras. Caso contrário, deve retornar false. Na main, utilize um laço for infinito para: Solicitar ao usuário o setor do ingresso e o código numérico. Chamar a função validarIngresso passando os valores lidos. Verificar o retorno da função: Se for true, imprima "Acesso liberado à área VIP!" e utilize o comando break para encerrar o laço. Se for false, imprima "Ingresso ou setor inválido. Tente novamente."."`

#### Resolução:

* [Ex4](EX4_relatorio4.go)

#### Exemplos de entrada e saída:

**Entrada:**

```text
Digite o setor do ingresso: PISTA
Digite o código do ingresso: 2026
Ingresso ou setor inválido. Tente novamente.
Digite o setor do ingresso: VIP
Digite o código do ingresso: 1010
Ingresso ou setor inválido. Tente novamente.
Digite o setor do ingresso: VIP
Digite o código do ingresso: 2026
Acesso liberado à área VIP!
```

**Saída:**

```text
Acesso liberado à área VIP!
```

---