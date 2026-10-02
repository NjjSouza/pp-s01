# ▸ Relatório 06 - Linguagem C++ (POO) ✿

---

## ▸ Exercícios Propostos ✿

### 01. Enunciado:

`"Cenário: Em um grande festival de música com um duelo de bandas, cada banda possui um nome, uma quantidade de integrantes, uma potência de som e um nível de energia da plateia. Tarefa: Crie uma classe Banda. Adicione os atributos: nome (string), integrantes (int), potenciaSom (float) e energia (int). Crie um método chamado duelar(): Ele deve receber como parâmetro um objeto da classe Banda (a rival). O método deve exibir uma mensagem confirmando a apresentação e subtrair o valor da potenciaSom da energia da banda rival. Na main: Instancie 2 objetos da classe Banda. Atribua valores personalizados aos atributos de cada um. Execute o método duelar(), definindo qual banda será a desafiante e qual será a rival. Ao final, exiba o status atualizado de ambas as bandas para ver como ficou a energia após o confronto"`

#### Resolução:

* [Ex1](EX1_relatorio6.cpp)

#### Exemplo de saída:

**Saída:**

```text
=== STATUS INICIAL DAS BANDAS ===
----------------------------------
Banda: The Rockers
Integrantes: 4
Potencia do Som: 30
Energia da Plateia: 100
----------------------------------
----------------------------------
Banda: Iron Sound
Integrantes: 5
Potencia do Som: 25
Energia da Plateia: 100
----------------------------------

=== INICIO DO DUELO ===
The Rockers subiu ao palco para a apresentacao!
Potencia do som no duelo: 30
Apresentacao concluida! A energia da banda rival (Iron Sound) foi reduzida.

=== STATUS ATUALIZADO APOS O CONFRONTO ===
----------------------------------
Banda: The Rockers
Integrantes: 4
Potencia do Som: 30
Energia da Plateia: 100
----------------------------------
----------------------------------
Banda: Iron Sound
Integrantes: 5
Potencia do Som: 25
Energia da Plateia: 70
----------------------------------
```

---

### 02. Enunciado:

`"Cenário: No jogo Persona, a relação do protagonista com seus aliados (Links Sociais) evolui à medida que passam tempo juntos, alterando seus níveis de afinidade de forma controlada. Tarefa: Crie uma classe chamada LinkSocial. Adicione os atributos nome (string) (obs: nome do personagem), arcana (string) (obs: arcana que representa o Link entre o protagonista e o personagem) e rank (int) como privados. Crie os métodos públicos de acesso (getters) e modificação (setters) para cada atributo. Crie um método chamado subirRank(): Ele deve apenas incrementar em +1 o valor do atributo rank. Na main: Instancie um objeto da classe LinkSocial. Utilize os métodos setters para definir o nome, a arcana e o rank inicial (ex: 1) do personagem. Execute o método subirRank(). Exiba na tela os dados do Link Social utilizando os métodos getters para confirmar o aumento do rank."`

#### Resolução:

* [Ex2](EX2_relatorio6.cpp)

#### Exemplo de saída:

**Saída:**

```text
=== DADOS INICIAIS DO LINK SOCIAL ===
Nome do Personagem: Ryuji Sakamoto
Arcana: Carruagem
Rank Inicial: 1

[Afinidade fortalecida! Subindo de rank...]

=== DADOS ATUALIZADOS DO LINK SOCIAL ===
Nome do Personagem: Ryuji Sakamoto
Arcana: Carruagem
Rank Atualizado: 2
```

--- 

### 03. Enunciado:

`"Cenário: No Inatel, durante eventos acadêmicos e feiras tecnológicas como a FETIN, diferentes pessoas desempenham papéis essenciais na comunidade. Todos compartilham características de um membro da instituição, mas alunos e professores possuem atribuições e dados específicos dentro do campus. Tarefa: Crie uma classe base chamada MembroInatel. Adicione o atributo nome (string). Crie um método chamado seApresentar() que exiba na tela: "Sou um membro da comunidade Inatel: [nome]." Crie as classes Aluno e Professor que herdem de MembroInatel: Adicione o atributo curso (string) na classe Aluno. Adicione o atributo disciplina (string) na classe Professor. Sobrescreva o método seApresentar() em ambas as classes filhas: No Aluno, ele deve exibir: "Meu nome é [nome] e estudo no curso de [curso]." No Professor, ele deve exibir: "Meu nome é [nome] e leciono a disciplina de [disciplina]." Na main: Instancie um objeto da classe Aluno e um objeto da classe Professor. Atribua valores aos atributos de cada um deles. Chame o método seApresentar() de cada objeto para demonstrar como a classe filha reutilizou e personalizou o comportamento da classe base."`

#### Resolução:

* [Ex3](EX3_relatorio6.cpp)

#### Exemplo de saída:

**Saída:**

```text
=== APRESENTACAO DOS MEMBROS DO INATEL ===
Meu nome e Carlos Silva e estudo no curso de Engenharia de Software.
Meu nome e Dr. Pedro Henrique e leciono a disciplina de Programacao Orientada a Objetos.
```

---

### 04. Enunciado:

`"Cenário: Na Comarca, a terra natal dos Hobbits, a vida é tranquila e cheia de tradições cotidianas. Embora todos compartilhem o amor pela paz e pela boa comida, cada Hobbit possui uma ocupação diferente para manter a comunidade funcionando. Tarefa: Crie uma classe base chamada Hobbit: Adicione o atributo nome (string). Crie um método (virtual) chamado fazerAtividade(). Dentro dele, imprima: "O hobbit [nome] está aproveitando um dia tranquilo na Comarca." Crie três classes filhas que herdem de Hobbit: Jardineiro: Sobrescreva fazerAtividade() para exibir: "O jardineiro [nome] está cuidando das flores e plantas ao redor das tocas!" Cozinheiro: Sobrescreva fazerAtividade() para exibir: "O cozinheiro [nome] está preparando o segundo café da manhã para os convidados!" Fazendeiro: Sobrescreva fazerAtividade() para exibir: "O fazendeiro [nome] está colhendo vegetais e hortaliças em suas terras! Na main: Crie um vetor (ou lista) para armazenar os objetos do tipo Hobbit (utilizando ponteiros da classe base). Crie uma instância de cada profissão (Jardineiro, Cozinheiro e Fazendeiro) com seus respectivos nomes e adicione-as ao seu vetor. Percorra o vetor e, para cada elemento, chame o método fazerAtividade() para demonstrar o comportamento polimórfico"`

#### Resolução:

* [Ex4](EX4_relatorio6.cpp)

#### Exemplo de saída:

**Saída:**

```text
=== POLIMORFISMO: ATIVIDADES NA COMARCA ===
O jardineiro Samwise Gamgee esta cuidando das flores e plantas ao redor das tocas!
O cozinheiro Peregrin Tuk esta preparando o segundo cafe da manha para os convidados!
O fazendeiro Meriadoc Brandebuque esta colhendo vegetais e hortalicas em suas terras!
```

---