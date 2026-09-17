# ▸ Relatório 05 - Linguagem C++ ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Crie uma função recursiva chamada int combinar_equipes(int n). Em um torneio eliminatório simétrico, o número de cenários de confrontos possíveis para uma chave de tamanho n é determinado pela análise combinada dos seus subgrupos, seguindo as regras: Se n = 0, a função deve retornar 0. Se n = 1, a função deve retornar 1 (cenário base com um grupo único). Para qualquer valor n > 1, retorne a soma dos cenários dos dois níveis anteriores chamando a própria função: combinar_equipes(n - 1) + combinar_equipes(n - 2). Na main, solicite ao usuário o tamanho do chaveamento n e exiba a quantidade total de combinações calculadas recursivamente."`
#### Resolução:

* [Ex1](EX1_relatorio5.cpp)

#### Exemplos de entrada e saída:

**Entrada:**

```text
6
```

**Saída:**

```text
Digite o tamanho do chaveamento (n): 6
Total de cenários de confrontos possíveis: 8
```

---

### 02. Enunciado:

`"Crie uma função chamada float calcular_confiabilidade_sistema(float probabilidades[], int tamanho). Em um sistema crítico cujos componentes estão conectados em série, o sistema só funciona se todos os seus componentes funcionarem. A probabilidade de o sistema continuar em operação é dada pelo produto das probabilidades individuais de cada componente. A função deve receber o array com as probabilidades de funcionamento de cada componente (valores entre 0.0 e 1.0) e o seu tamanho. Em seguida, deve iterar pelo array, multiplicar todas as probabilidades e retornar a probabilidade conjunta final do sistema. Na main: Peça ao usuário a quantidade de componentes do sistema N. Crie um array de float para armazenar as probabilidades. Solicite ao usuário que digite a probabilidade de cada componente. Chame a função calcular_confiabilidade_sistema passando o array e o tamanho. Exiba a confiabilidade total do sistema."`

#### Resolução:

* [Ex2](EX2_relatorio5.cpp)

#### Exemplos de entrada e saída:

**Entrada:**

```text
3
0.98
0.95
0.90
```

**Saída:**

```text
Digite a quantidade de componentes do sistema: 3
Digite a probabilidade do componente 1 (ex: 0.95): 0.98
Digite a probabilidade do componente 2 (ex: 0.95): 0.95
Digite a probabilidade do componente 3 (ex: 0.95): 0.90
Confiabilidade total do sistema: 0.8379 (83.79%)
```
--- 

### 03. Enunciado:

`"Crie um programa em C++ que gerencie o limite de peso transportado por um drone industrial de entregas. No início do programa, solicite ao usuário que informe a capacidade máxima de carga do drone em kg (ex: 15.0 kg). O programa deve manter o peso atual carregado inicializado em 0.0 kg e exibir um menu iterativo com as seguintes opções: Verificar Carga Atual: Exibe o peso atual carregado e a capacidade disponível restante;  Carregar Pacote: Pergunta o peso do pacote e tenta adicioná-lo ao drone; Descarregar Pacote: Pergunta o peso a ser removido e reduz da carga atual; e Encerrar Operação: Sai do programa. Regra de Bloqueio: O programa não pode permitir que o peso total ultrapasse a capacidade máxima de carga informada. Caso o usuário tente adicionar um pacote que exceda esse limite, exiba a mensagem: "Alerta: Peso máximo de decolagem excedido! Operação cancelada." Da mesma forma, ao descarregar, não é permitido remover mais peso do que o que já está carregado. O menu deve reaparecer após cada operação até que a opção de encerrar seja selecionada."`

#### Resolução:

* [Ex3](EX3_relatorio5.cpp)

#### Exemplos de entrada e saída:

**Entrada:**

```text
10.0
2
6.5
2
5.0
1
4
```

**Saída:**

```text
Informe a capacidade maxima de carga do drone (kg): 10.0
=== SISTEMA DE CARGA DO DRONE ===
1. Verificar Carga
2. Carregar Pacote
3. Descarregar Pacote
4. Encerrar Operacao
Escolha uma opcao: 2
Digite o peso do pacote a ser carregado (kg): 6.5
Pacote adicionado com sucesso!
=== SISTEMA DE CARGA DO DRONE ===
1. Verificar Carga
2. Carregar Pacote
3. Descarregar Pacote
4. Encerrar Operacao
Escolha uma opcao: 2
Digite o peso do pacote a ser carregado (kg): 5.0
Alerta: Peso maximo de decolagem excedido! Operacao cancelada.
=== SISTEMA DE CARGA DO DRONE ===
1. Verificar Carga
2. Carregar Pacote
3. Descarregar Pacote
4. Encerrar Operacao
Escolha uma opcao: 1
Carga Atual: 6.50 kg / 10.00 kg
Espaco Disponivel: 3.50 kg
=== SISTEMA DE CARGA DO DRONE ===
1. Verificar Carga
2. Carregar Pacote
3. Descarregar Pacote
4. Encerrar Operacao
Escolha uma opcao: 4
Encerrando sistema de telemetria...
```

---

### 04. Enunciado:

`"Crie um programa em C++ que gerencie o estado de ativação de um painel solar com uma matriz 5 X 5 de células fotovoltaicas (total de 25 células). Declare uma matriz int matriz_solar[5][5] e garanta que todas as células iniciem com 0 (inativas). O programa deve rodar dentro de um laço while exibindo as seguintes opções: Ativar Célula: Solicita a fileira (0 a 4) e a coluna (0 a 4). Se matriz_solar[f][c] == 0, mude para 1 e exiba "Sucesso: Célula solar ativada!". Se matriz_solar[f][c] == 1, exiba "Erro: Célula solar já está em operação!"; Telemetria do Painel: Percorre a matriz com dois laços for aninhados e exibe o mapa visual da matriz no terminal (ex: usando [0] para inativo e [1] para ativo); e Sair: Encerra o laço principal."`

#### Resolução:

* [Ex4](EX4_relatorio5.cpp)

#### Exemplos de entrada e saída:

**Entrada:**

```text
1
2
3
2
3
```

**Saída:**

```text
=== TELEMETRIA DO PAINEL SOLAR ===
1. Ativar Celula
2. Ver Mapa da Matriz
3. Sair
Escolha uma opcao: 1
Digite a fileira (0-4): 2
Digite a coluna (0-4): 3
Sucesso: Celula solar ativada!
=== TELEMETRIA DO PAINEL SOLAR ===
1. Ativar Celula
2. Ver Mapa da Matriz
3. Sair
Escolha uma opcao: 2
Mapa da Matriz Solar
[0] [0] [0] [0] [0]
[0] [0] [0] [0] [0]
[0] [0] [0] [1] [0]
[0] [0] [0] [0] [0]
[0] [0] [0] [0] [0]
=== TELEMETRIA DO PAINEL SOLAR ===
1. Ativar Celula
2. Ver Mapa da Matriz
3. Sair
Escolha uma opcao: 3
=== RELATORIO FINAL DE OPERACAO ===
Total de celulas ATIVAS: 1
Total de celulas INATIVAS: 24
Capacidade Operacional: 4.00%
```

---