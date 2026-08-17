# ▸ Relatório 01 ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`Faça um programa que leia o peso de uma pessoa (em kg) e a quantidade de água que ela já ingeriu no dia (em ml). A meta diária recomendada de água é calculada multiplicando o peso do indivíduo por 35 ml. Se a quantidade ingerida for maior ou igual à meta recomendada, exiba a mensagem: "Meta atingida!" Caso contrário, exiba a mensagem: "Meta não atingida".`

#### Resolução:

```basic
DIM peso AS DOUBLE
DIM quantidade AS DOUBLE
DIM meta AS DOUBLE

PRINT "Digite o seu peso (em kg):"
INPUT peso

PRINT "Digite a quantidade de agua ingerida (em ml):"
INPUT quantidade

meta = peso * 35

IF quantidade >= meta THEN
    PRINT "Meta atingida!"
ELSE
    PRINT "Meta nao atingida"
END IF
```

#### Exemplos de entrada e saída:

**Meta não atingida:**

```text
Entrada:
80
2500

Saída:
Meta nao atingida
```

**Meta atingida:**

```text
Entrada:
70
2500

Saída:
Meta atingida!
```

---

### 02. Enunciado:

`Faça um programa que defina um PIN numérico fixo no código (por exemplo: 4321). Peça para o usuário digitar o PIN de acesso. Enquanto o PIN digitado for incorreto, exiba a mensagem: "PIN inválido. Tente novamente." e peça o PIN novamente. Quando o usuário digitar o PIN correto, exiba a mensagem: "Transação autorizada!"`

#### Resolução:

```basic
DIM pin_fixo AS STRING
DIM pin_informado AS STRING
DIM tentativas AS INTEGER
DIM max_tentativas AS INTEGER

pin_fixo = "4321"
tentativas = 0
max_tentativas = 3

PRINT "Digite o PIN de acesso:"
INPUT pin_informado
tentativas = tentativas + 1

WHILE (pin_informado <> pin_fixo) AND (tentativas < max_tentativas)
    PRINT "PIN invalido. Tente novamente."
    PRINT "Digite o PIN de acesso:"
    INPUT pin_informado
    tentativas = tentativas + 1
WEND

IF pin_informado = pin_fixo THEN
    PRINT "Transacao autorizada!"
ELSE
    PRINT "Limite de tentativas excedido."
END IF
```

> max_tentativas adicionado para evitar saída infinita ao executar em ambientes online como o OneCompiler.

#### Exemplos de entrada e saída:

**Acesso autorizado:**

```text
Entrada:
1111
1212
4321

Saída:
PIN invalido. Tente novamente.
PIN invalido. Tente novamente.
Transacao autorizada!
```

**Limite excedido**

```text
Entrada:
1111
1212
7890

Saída:
PIN invalido. Tente novamente.
PIN invalido. Tente novamente.
Limite de tentativas excedido.
```

**Aprovação direta**

```text
Entrada:
4321

Saída:
Transacao autorizada!
```

---

### 03. Enunciado:

`Faça um programa que peça e leia uma quantidade de tempo em Horas. Converta esse valor para minutos e segundos. Ao final, exiba: o valor original em horas, o valor equivalente em minutos e o valor equivalente em segundos.`

#### Resolução:

```basic
DIM horas AS DOUBLE
DIM minutos AS DOUBLE
DIM segundos AS DOUBLE

PRINT "Digite o tempo em horas a ser convertido:"
INPUT horas

minutos = horas * 60
segundos = minutos * 60

PRINT "Valor original em horas:"; horas
PRINT "Tempo equivalente em minutos:"; minutos
PRINT "Tempo equivalente em segundos:"; segundos
```

#### Exemplos de entrada e saída:

**Com valores inteiros:**

```text
Entrada:
1

Saída:
Valor original em horas: 1
Tempo equivalente em minutos: 60
Tempo equivalente em segundos: 3600
```

**Com valores decimais:**

```text
Entrada: 
2.5

Saída:
Valor original em horas: 2.5
Tempo equivalente em minutos: 150
Tempo equivalente em segundos: 9000
```

---

### 04. Enunciado:

`Faça um programa que peça e leia: a distância percorrida em um treino de corrida (em quilômetros), tempo total gasto para completar a corrida (em minutos). Calcule o pace médio do corredor (tempo gasto por quilômetro): pace = Tempo/Distância. Ao final, exiba o valor do pace médio calculatedo (em min/km)`

#### Resolução:

```basic
DIM distancia AS DOUBLE
DIM tempo AS DOUBLE
DIM pace_medio AS DOUBLE

PRINT "Digite a distancia percorrida (em km):"
INPUT distancia

PRINT "Digite o tempo total gasto (em minutos):"
INPUT tempo

pace_medio = tempo / distancia

PRINT "Pace medio:"; pace_medio; "min/km"
```

#### Exemplos de entrada e saída:

**Com valores inteiros:**

```text
Entrada:
10
50

Saída:
Pace medio: 5 min/km
```

**Com valores decimais:**

```text
Entrada:
5.5
33

Saída:
Pace medio: 6 min/km
```

---