// classe base: UsuarioDeNen define a estrutura genérica de um usuário de Nen
class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome; // atributo público
  }

  // ataque genérico de aura contra uma Aranha (alvo)
  atacar(alvo) {
    console.log(`${this.nome} lança um ataque genérico de aura contra ${alvo.nome}!`);
  }
}

// classes filhas - sem constructor próprio (herdam automaticamente de UsuarioDeNen)
// cada classe sobrescreve atacar(alvo) com um ataque característico do seu tipo de Nen
class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Intensificador) concentra aura em seu punho e golpeia ${alvo.nome} com Jajanken: Pedra!`);
  }
}

class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Transmutador) transmuta sua aura em eletricidade e eletrocuta ${alvo.nome} com Narukami!`);
  }
}

class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Materializador) materializa correntes indestrutíveis e aprisiona ${alvo.nome} com Chain Jail!`);
  }
}

// classe aranha: representa um integrante da Trupe Fantasma
class Aranha {
  constructor(nome, numero) {
    this.nome = nome; // nome do membro
    this.numero = numero; // número da tatuagem de aranha
  }
}

// agregação: a TrupeFantasma agrupa membros (Aranhas) que já foram criados
class TrupeFantasma {
  // atributo privado para encapsular a lista de integrantes
  #aranhas;

  // construtor com valor padrão [] para o array de aranhas
  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#aranhas = aranhas; // agregação
  }

  // revela a cidade e os membros da trupe com forEach
  revelarAranhas() {
    console.log(`Trupe Fantasma avistada na cidade de ${this.cidade}:`);
    this.#aranhas.forEach(aranha => {
      console.log(`- Aranha Nº ${aranha.numero}: ${aranha.nome}`);
    });
  }

  // busca uma aranha específica pelo número tatuado usando find
  buscarAranha(numero) {
    return this.#aranhas.find(aranha => aranha.numero === numero);
  }
}

// ----------------- Execução Principal (Main) -----------------
// criando duas Aranhas antes da Trupe (agregação)
const aranha1 = new Aranha("Chrollo Lucilfer", 0);
const aranha2 = new Aranha("Uvogin", 11);

// criando a Trupe Fantasma na cidade informada e associando as aranhas
const trupe = new TrupeFantasma("Yorknew City", [aranha1, aranha2]);

// revelando as aranhas presentes na cidade
trupe.revelarAranhas();

// buscando uma das aranhas pelo seu número tatuado
const alvo = trupe.buscarAranha(11);
console.log(`\nAlvo localizado: ${alvo.nome} (Nº ${alvo.numero})`);
console.log("Iniciando ofensiva dos Hunters:");

// criando um array com um usuário de Nen de cada tipo
const hunters = [
  new Intensificador("Gon Freecss"),
  new Transmutador("Killua Zoldyck"),
  new Materializador("Kurapika")
];

// percorrendo o array com forEach e atacando polimorficamente a Aranha localizada
hunters.forEach(hunter => {
  hunter.atacar(alvo);
});

// ==============================================================================
// conceitos de POO demonstrados neste programa:
// - herança: As classes filhas (Intensificador, Transmutador e Materializador) herdam
//   o estado e comportamento da classe base UsuarioDeNen sem precisar de constructor próprio.
// - polimorfismo: O array `hunters` armazena diferentes subtipos de UsuarioDeNen. Ao
//   percorrer com `forEach` chamando `atacar(alvo)`, cada classe executa sua própria
//   implementação do golpe.
// - agregação: A classe `TrupeFantasma` agrega objetos `Aranha` criados previamente fora dela.
// - encapsulamento: O atributo `#aranhas` é privado, protegendo a integridade da lista interna.
// ==============================================================================
