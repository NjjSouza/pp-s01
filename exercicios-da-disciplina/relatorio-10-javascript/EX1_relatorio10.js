// classe base que representa uma criatura Pokémon genérica
class Pokemon {
  // atributo privado para vida (#vida garante encapsulamento nativo no JS)
  #vida;

  constructor(apelido, tipo, vidaInicial) {
    this.apelido = apelido; // atributo público
    this.tipo = tipo; // atributo público
    this.#vida = vidaInicial; // atributo privado inicializado no constructor
  }

  // getter para leitura da vida (sem setter, impedindo alteração externa direta)
  get vida() {
    return this.#vida;
  }

  // metodo para sofrer dano: decrementa a vida garantindo que nunca fique abaixo de zero
  sofrerDano(pontos) {
    this.#vida = Math.max(0, this.#vida - pontos);
    console.log(`${this.apelido} sofreu ${pontos} de dano! Vida restante: ${this.#vida}`);
  }

  // metodo genérico de ataque
  atacar(alvo) {
    console.log(`${this.apelido} desferiu um ataque genérico em ${alvo.apelido}!`);
    alvo.sofrerDano(10);
  }
}

// herança - Squirtle herda de Pokemon
class Squirtle extends Pokemon {
  constructor(apelido, vidaInicial) {
    // super chama o construtor da classe base passando o tipo fixo 'Água'
    super(apelido, 'Água', vidaInicial);
  }

  // sobrescrita de metodo (polimorfismo): golpe específico do tipo Água com 20 de dano
  atacar(alvo) {
    console.log(`${this.apelido} usou Jato de Água em ${alvo.apelido}!`);
    alvo.sofrerDano(20);
  }
}

// herança - Bulbasaur herda de Pokemon
class Bulbasaur extends Pokemon {
  constructor(apelido, vidaInicial) {
    // super chama o construtor da classe base passando o tipo fixo 'Planta'
    super(apelido, 'Planta', vidaInicial);
  }

  // sobrescrita de metodo (polimorfismo): golpe específico do tipo Planta com 15 de dano
  atacar(alvo) {
    console.log(`${this.apelido} usou Folha Navalha em ${alvo.apelido}!`);
    alvo.sofrerDano(15);
  }
}

// ----------------- Execução Principal (Main) -----------------
// criando um Squirtle e um Bulbasaur (Bulbasaur deve iniciar obrigatoriamente com 30 de vida)
const squirtle = new Squirtle("Squirtle", 50);
const bulbasaur = new Bulbasaur("Bulbasaur", 30);

// Bulbasaur ataca Squirtle uma vez
bulbasaur.atacar(squirtle);

// Squirtle ataca Bulbasaur duas vezes (demonstra o dano e a vida não ficando negativa)
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);

// imprimindo a vida restante de ambos utilizando o getter 'vida'
console.log(`Vida restante de ${squirtle.apelido}: ${squirtle.vida}`);
console.log(`Vida restante de ${bulbasaur.apelido}: ${bulbasaur.vida}`);

// Tentativa de acessar o atributo privado diretamente: console.log(squirtle.#vida);
// -> Erro no OneCompiler: SyntaxError: Private field '#vida' must be declared in an enclosing class
// Comentário: Em JavaScript moderno (ES2022+), campos privados identificados com '#' possuem suporte sintático direto pelo motor da linguagem (V8). A tentativa de acessar '#vida' fora do corpo da classe resulta em um SyntaxError antes mesmo de o código ser executado (durante o parse/análise sintática). O encapsulamento é garantido em tempo de compilação/análise e o acesso seguro de leitura só é possível através do getter público 'vida'.
