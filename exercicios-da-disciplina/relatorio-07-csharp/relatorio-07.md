# ▸ Relatório 07 - Linguagem C# (POO) ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Cenário: Em O Senhor dos Anéis, durante o cerco a Minas Tirith, cada combatente convocado é registrado com nome, povo e posto. Alguns chegam armados, outros não.
Tarefa:
1.Crie a classe CombatenteDeGondor com as propriedades Nome, Povo e Posto, todas com private set e preenchidas pelo construtor.
2.Crie a propriedade Armamento, com private set e valor inicial "Desarmado", e o método Equipar(string arma) para alterá-la.
3.Crie o método ApresentarUnidade(), que exibe os dados do combatente. O armamento só deve aparecer se for diferente de "Desarmado".
4.Na Main, crie três combatentes à sua escolha, equipe pelo menos um e chame ApresentarUnidade() em todos.
5.Tente alterar o Posto de um combatente na Main, observe o erro e comente a linha."`

#### Resolução:

* [Ex1](EX1_relatorio7.cs)

#### Exemplo de saída:

**Saída:**

```text
=== REGISTRO DE COMBATENTES EM MINAS TIRITH ===

Combatente: Aragorn | Povo: Dunedain | Posto: Capitao
Armamento: Anduril
---------------------------------------------
Combatente: Legolas | Povo: Elfo | Posto: Arqueiro
Armamento: Arco dos Galadhrim
---------------------------------------------
Combatente: Peregrin Took | Povo: Hobbit | Posto: Guarda da Cidadela
---------------------------------------------
```

---

### 02. Enunciado:

`"Cenário: No mundo Pokémon, numa batalha de exibição, cada Pokémon entra em campo e ataca do seu jeito: os do Tipo Planta usam um golpe próprio, os do Tipo Elétrico atacam normalmente e depois soltam uma descarga, e os sem tipo definido usam um ataque comum.
Tarefa:
1.Crie a classe base Pokemon com Especie e Nivel (recebidos no construtor) e o método virtual Atacar(), com um ataque genérico.
2.Crie as classes TipoPlanta e TipoEletrico, que herdam de Pokemon.
3.Em TipoPlanta, sobrescreva Atacar() sem chamar o pai. Em TipoEletrico, sobrescreva Atacar() chamando primeiro base.Atacar().
4.Na Main, crie uma List<Pokemon> com um Pokémon de cada classe (você escolhe quais) e percorra-a com foreach chamando Atacar()."`

#### Resolução:

* [Ex2](EX2_relatorio7.cs)

#### Exemplo de saída:

**Saída:**

```text
=== BATALHA DE EXIBICAO POKEMON ===

Eevee (Nivel 10) usou um ataque generico: Investida!
---------------------------------------------
Sceptile (Nivel 36) usou o golpe proprio: Folha Navalha!
---------------------------------------------
Pikachu (Nivel 25) usou um ataque generico: Investida!
-> Em seguida, Pikachu soltou uma descarga eletrica: Choque do Trovao!
---------------------------------------------
```

--- 

### 03. Enunciado:

`"Cenário: A elfa Frieren carrega um grimório especial criado junto com ela (composição) e viaja com companheiros que encontrou ao longo da jornada, existindo antes de conhecê-la (agregação).
Tarefa:
1.Crie a classe Grimorio com a propriedade FeiticoFavorito (valor inicial "Nenhum") e o método Abrir(), que a exibe.
2.Crie a classe Companheiro com Nome e Funcao e o método Apresentar().
3.Crie a classe Maga com: Nome e um Grimorio criado dentro do construtor (Composição); uma lista privada de Companheiro, o método Recrutar(Companheiro c) (Agregação) e o método MostrarGrupo().
4.Na Main, crie dois companheiros antes da Maga, crie a Maga, recrute-os, defina o feitiço favorito do grimório e chame MostrarGrupo() e Abrir().
5.Explique, em um comentário no código, o que é composição e o que é agregação no seu programa."`

#### Resolução:

* [Ex3](EX_3_relatorio7.cs)

#### Exemplo de saída:

**Saída:**

```text
=== Grupo de Frieren ===
Companheiro: Fern | Funcao: Maga Aprendiz
Companheiro: Stark | Funcao: Guerreiro

[Grimorio] Feitico favorito registrado: Zoltraak (Magia de Ataque Comum)
```

---

### 04. Enunciado:

`"Cenário: No universo de Lovecraft, na Biblioteca da Universidade Miskatonic, um pesquisador cataloga relatos de entidades cósmicas. Algumas têm origem conhecida; outras, não.
Tarefa:
1.Crie a classe base EntidadeCosmica com Nome e Origem (valor inicial "Desconhecida") e o método virtual Manifestar(), que só exibe a origem se ela for conhecida.
2.Crie as classes Profundo e MiGo, que herdam de EntidadeCosmica. Uma sobrescreve Manifestar() sem chamar o pai; a outra chama base.Manifestar() antes.
3.Crie a classe Pesquisador com Nome, uma lista privada de EntidadeCosmica, o método Catalogar(EntidadeCosmica e) e o método LerCatalogo().
4.Na Main, crie uma entidade de cada classe, defina a origem de pelo menos uma, catalogue todas em um pesquisador e chame LerCatalogo()."`

#### Resolução:

* [Ex4](EX_4_relatorio7.cs)

#### Exemplo de saída:

**Saída:**

```text
=== CATALOGO DE ENTIDADES COSMICAS - PESQUISADOR Henry Armitage ===

[Entidade Cosmica] Nome: A Cor que Caiu do Espaco
------------------------------------------------------------
[Profundo] Dagon surge das profundezas do oceano entoando canticos astrais!
------------------------------------------------------------
[Entidade Cosmica] Nome: Colono Extraterrestre
Origem: Yuggoth
-> A criatura fungoide Mi-Go vibra suas asas cirurgicas emitindo zumbidos estranhos.
------------------------------------------------------------
```

---