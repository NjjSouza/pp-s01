// classe FichaDeCriatura: representa o registro de uma criatura nas páginas do diário
class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }

  // retorna a descrição textual da ficha
  descrever() {
    return `Criatura: ${this.criatura} | Nível de Perigo: ${this.nivelDePerigo}`;
  }
}

// composição: o DiarioMisterioso cria e mantém suas próprias fichas internamente
class DiarioMisterioso {
  // atributo privado que guarda as fichas do diário
  #fichas = [];

  constructor(numero) {
    this.numero = numero;
    this.#fichas = []; // inicializa como um array vazio
  }

  // composição: cria uma FichaDeCriatura dentro do metodo e a armazena em #fichas
  anotar(criatura, nivelDePerigo) {
    const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
    this.#fichas.push(ficha);
  }

  // imprime o número do diário e o retorno do metodo descrever() de cada ficha registrada
  exibirFichas() {
    console.log(`Diário Número ${this.numero}:`);
    this.#fichas.forEach(ficha => {
      console.log(ficha.descrever());
    });
  }
}

// classe funcionario: representa um trabalhador da cidade de Gravity Falls
class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}

// agregação: a CabanaDoMisterio contrata funcionários que já existem fora dela
class CabanaDoMisterio {
  // atributo privado que armazena os funcionários agregados
  #funcionarios = [];

  constructor(dono) {
    this.dono = dono;
    this.#funcionarios = []; // inicializa como um array vazio
  }

  // agregação: recebe um funcionário criado externamente e o adiciona ao quadro
  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }

  // imprime o nome do proprietário e lista todos os funcionários agregados
  abrirAsPortas() {
    console.log(`Cabana do Mistério - Proprietário: ${this.dono}`);
    console.log("Funcionários em serviço:");
    this.#funcionarios.forEach(funcionario => {
      console.log(`- ${funcionario.nome}: ${funcionario.cargo}`);
    });
  }
}

// ----------------- Execução Principal (Main) -----------------
// criando um diário misterioso e anotando 3 criaturas (composição)
const diario3 = new DiarioMisterioso(3);
diario3.anotar("Gnomos da Floresta", "Baixo");
diario3.anotar("Multiuso / Homem-Multidão", "Médio");
diario3.anotar("Bill Cipher", "Extremo");

// exibindo todas as fichas anotadas no diário
diario3.exibirFichas();

console.log(""); // linha em branco para organização visual

// criando dois funcionários antes da Cabana existir (agregação - ciclo de vida independente)
const soos = new Funcionario("Soos Ramirez", "Faz-tudo");
const wendy = new Funcionario("Wendy Corduroy", "Atendente do Caixa");

// criando a Cabana do Mistério, contratando os funcionários e abrindo as portas
const cabana = new CabanaDoMisterio("Stan Pines");
cabana.contratar(soos);
cabana.contratar(wendy);

cabana.abrirAsPortas();

// ==============================================================================
// explicação: o que é composição e o que é agregação neste programa:
//
// - composição (DiarioMisterioso -> FichaDeCriatura):
//   cada objeto `FichaDeCriatura` é instanciado diretamente dentro do metodo `anotar`
//   da classe `DiarioMisterioso` (`new FichaDeCriatura(...)`). Trata-se de uma relação de
//   dependência forte (todoparte existencial): a ficha nasce dentro do diário e não
//   existe de forma autônoma fora dele. Caso a instância de `DiarioMisterioso` seja destruída
//   ou coletada pelo Garbage Collector, todas as instâncias de `FichaDeCriatura` contidas
//   em seu array privado `#fichas` serão igualmente destruídas da memória.
//
// - agregação (CabanaDoMisterio -> Funcionario):
//   os objetos `soos` e `wendy` são instanciados no escopo da `main` antes mesmo da
//   criação da `CabanaDoMisterio`. Eles são passados como argumento para o metodo `contratar`.
//   Trata-se de uma associação fraca ("tem-um"): a cabana apenas armazena referências a
//   esses funcionários no array privado `#funcionarios`. Caso a `CabanaDoMisterio` deixe de
//   existir ou seja destruída, os objetos `Funcionario` continuam existindo normalmente no
//   programa, pois possuem ciclo de vida totalmente independente.
// ==============================================================================
