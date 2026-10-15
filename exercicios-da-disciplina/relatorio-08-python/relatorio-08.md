# ▸ Relatório 08 - Linguagem Python (POO) ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Cenário: Em Dark Souls, todo morto-vivo carrega almas e Frascos de Estus, que se recarregam nas fogueiras e nunca passam de 10. Os clérigos, além disso, conhecem um milagre próprio.
Tarefa: 1. Crie a classe MortoVivo, cujo __init__ recebe e inicializa nome (público), _almas (protegido) e __estus (privado). 2. Crie os métodos get_estus() e set_estus(quantidade). O setter só aceita valores **de 0 a 10**. Fora dessa faixa, ele exibe "Quantidade de Estus inválida!" e mantém o valor anterior. 3. Crie o método mostrar_status(), que retorna um texto com os três dados (ex.: "Mortovivo Petrus | Almas: 2000 | Estus: 5") 4. Crie a classe filha Clerigo, com o atributo exclusivo milagre. Inicialize a parte herdada com super().__init__(...) e sobrescreva mostrar_status(), reaproveitando o texto do pai com super().mostrar_status(). 5. No main, crie um `Clerigo` e exiba o status. Tente definir o Estus como 15 e depois como 10 e exiba o status de novo. 6. Tente imprimir o __estus do clérigo diretamente no main, observe o erro e comente a linha."`

#### Resolução:

* [Ex1](EX1_relatorio08.py)

#### Exemplo de saída:

**Saída:**

```text
Mortovivo Petrus | Almas: 2000 | Estus: 5 | Milagre: Cura
Quantidade de Estus inválida!
Mortovivo Petrus | Almas: 2000 | Estus: 5 | Milagre: Cura
Mortovivo Petrus | Almas: 2000 | Estus: 10 | Milagre: Cura
```

---

### 02. Enunciado:

`"Cenário: Em Overwatch, todo herói pode usar a sua suprema, mas o efeito depende da função. Os suportes, além disso, conseguem curar a equipe.
Tarefa: 1.Crie a classe base HeroiOverwatch, cujo __init__ recebe codinome e funcao, com o método usar_suprema(), que exibe uma suprema genérica. 2.Crie as classes filhas HeroiTanque e HeroiSuporte, sem __init__ próprio, e sobrescreva usar_suprema() nas duas. 3.Em HeroiSuporte, crie também o método exclusivo curar_equipe(). 4.Na main, crie uma lista list[HeroiOverwatch] com um herói de cada classe. 5.Percorra a lista com for chamando usar_suprema() e, usando isinstance, chame curar_equipe() apenas nos suportes."`

#### Resolução:

* [Ex2](EX2_relatorio08.py)

#### Exemplo de saída:

**Saída:**

```text
Reinhardt (Tanque) usa uma suprema de tanque: cria uma barreira enorme!
Mercy (Suporte) usa uma suprema de suporte: fortalece toda a equipe!
Mercy está curando a equipe!
```

--- 

### 03. Enunciado:

`"Cenário: Em Persona 5, um grupo de estudantes chamado Phantom Thieves invade Palácios: mundos criados a partir do coração de pessoas corruptas, cada um conhecido pelo nome do seu dono (ex.: o Palácio de Kamoshida). O líder do grupo, de codinome Joker, luta com a sua Persona, uma criatura que nasce de dentro dele e só existe enquanto ele existir (composição). Ao longo da história, ele recruta aliados: colegas que já existiam antes de entrar no grupo e continuam existindo fora dele (agregação).
Tarefa: 1.Crie a classe Persona, com nome e arcano e o método invocar(), que exibe os dois dados. 2.Crie a classe Aliado, com nome (nome real) e codinome. 3.Crie a classe Lider, que representa o Joker, com: codinome; uma Persona criada dentro do __init__, com nome "Arsène" e arcano "Louco"; uma lista _equipe que começa vazia. 4.Em Lider, crie os métodos: recrutar(aliado: Aliado), que adiciona o aliado à _equipe; infiltrar(palacio), que recebe o nome do dono do Palácio, exibe o Palácio invadido, invoca a Persona e lista a equipe. 5.Na main, crie aliados antes do líder. Depois, crie o líder com codinome, recrute os dois e chame infiltrar(""). 6. Explique, em um comentário no código, o que é composição e o que é agregação no seu programa."`

#### Resolução:

* [Ex3](EX3_relatorio08.py)

#### Exemplo de saída:

**Saída:**

```text
Palácio de Kamoshida invadido!
Persona invocada: Arsène (Arcano: Louco)
Equipe de Joker:
 - Ryuji Sakamoto (Skull)
 - Ann Takamaki (Panther)
```

---

### 04. Enunciado:

`"Cenário: Em Cyberpunk, Night City é uma metrópole futurista controlada por grandes corporações. Para atacá-las, hackers se organizam em células, grupos que coordenam diferentes unidades de rede em um mesmo ataque. Toda unidade segue o mesmo protocolo: precisa saber executar uma invasão. Mas cada tipo de unidade faz isso do seu jeito. O netrunner usa o seu cyberdeck para quebrar o gelo (ICE) de um servidor. Já o drone de vigilância intercepta o sinal da rede.
Tarefa: 1.Interface: crie a classe abstrata IUnidadeDeRede (herdando de ABC), com o método abstrato executar_invasao(). 2.Parte composta: crie a classe Cyberdeck, com o atributo modelo. 3.Implementação com composição: crie a classe OperadorNetrunner, que implementa IUnidadeDeRede: o __init__ recebe nome e o modelo do cyberdeck, e cria o Cyberdeck dentro dele; executar_invasao() exibe o nome do netrunner, o modelo do cyberdeck e que ele está quebrando o gelo (ICE) de um servidor. 4.Outra implementação: crie a classe DroneDeVigilancia, que também implementa IUnidadeDeRede: c.o __init__ recebe codigo, a identificação do drone; c.executar_invasao() exibe o código do drone e que ele está interceptando o sinal da rede. 5.Agregação: crie a classe CelulaHacker: c.o __init__ recebe nome e uma lista de membros já criados, anotada como list[IUnidadeDeRede]; c.iniciar_ataque() exibe o nome da célula e chama executar_invasao() de cada membro (polimorfismo). 6.Na main, crie um netrunner e um drone, junte os dois em uma célula e chame iniciar_ataque(). 7.Tente criar um objeto IUnidadeDeRede diretamente e observe o erro. Depois, transforme essa linha em comentário (#) para o programa voltar a roda`"

#### Resolução:

* [Ex4](EX4_relatorio08.py)

#### Exemplo de saída:

**Saída:**

```text
Célula Afterlife iniciando o ataque!
Netrunner V usa o cyberdeck Arasaka Mk.IV para quebrar o gelo (ICE) de um servidor.
Drone DR-77 está interceptando o sinal da rede.
```

---