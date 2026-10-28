// parte composta: classe Pistola que é criada e gerenciada diretamente pelo agente
class Pistola {
  constructor(modelo) {
    this.modelo = modelo; // armazena o modelo da arma
  }
}

// classe base: define a estrutura comum e estabelece o contrato abstrato
class AgenteProtocolo {
  // atributo privado para a pistola (composição)
  #pistola;

  constructor(codinome, modeloDaPistola) {
    this.codinome = codinome; // atributo público
    // composição: a instância de Pistola é criada internamente e associada ao ciclo de vida do agente
    this.#pistola = new Pistola(modeloDaPistola);
  }

  // metodo que atua como contrato abstrato: força as classes filhas a implementarem
  usarHabilidade() {
    throw new Error("O método 'usarHabilidade()' deve ser implementado pela subclasse!");
  }

  // metodo que aciona os dados do agente, da pistola composta e da habilidade polimórfica
  entrarEmCombate() {
    console.log(`Agente: ${this.codinome} | Pistola: ${this.#pistola.modelo} | Habilidade: ${this.usarHabilidade()}`);
  }
}

// classes filhas - sem constructor próprio (herdam automaticamente o constructor de AgenteProtocolo)
// cada uma sobrescreve usarHabilidade() com uma ação típica da sua função
class Controlador extends AgenteProtocolo {
  usarHabilidade() {
    return "Cortina de Fumaça (Bloqueio de visão)";
  }
}

class Iniciador extends AgenteProtocolo {
  usarHabilidade() {
    return "Flecha Rastreadora (Reconhecimento de área)";
  }
}

class Duelista extends AgenteProtocolo {
  usarHabilidade() {
    return "Erupção das Brumas / Dash (Entrada rápida no spike site)";
  }
}

// agregação: a classe Esquadrao gerencia uma coleção de agentes que já existem independentemente
class Esquadrao {
  // atributo privado que guarda a lista de agentes do time
  #agentes;

  constructor(nome, agentes) {
    this.nome = nome;
    this.#agentes = agentes; // agregação: array de agentes já instanciados externamente
  }

  // inicia a partida imprimindo o nome do esquadrão e chamando entrarEmCombate de cada agente (polimorfismo)
  iniciarPartida() {
    console.log(`Esquadrão ${this.nome} entrando em ação:`);
    this.#agentes.forEach(agente => {
      agente.entrarEmCombate();
    });
  }

  // filtra e retorna um novo array contendo apenas as instâncias de Controlador
  listarControladores() {
    return this.#agentes.filter(agente => agente instanceof Controlador);
  }
}

// ----------------- Execução Principal (Main) -----------------
// criando dois controladores, um iniciador e um duelista
const brimstone = new Controlador("Brimstone", "Sheriff");
const omen = new Controlador("Omen", "Ghost");
const sova = new Iniciador("Sova", "Classic");
const jett = new Duelista("Jett", "Frenzy");

// agregando os agentes no esquadrão
const esquadrao = new Esquadrao("Protocolo Alfa", [brimstone, omen, sova, jett]);

// iniciando a partida com todos os agentes agindo polimorficamente
esquadrao.iniciarPartida();

// listando apenas os controladores com forEach
console.log("\nControladores do esquadrão:");
esquadrao.listarControladores().forEach(controlador => {
  console.log(controlador.codinome);
});

// criando uma instância direta da classe base AgenteProtocolo:
const agenteBase = new AgenteProtocolo("Recruta", "Classic");
// agenteBase.entrarEmCombate();
// -> Erro no OneCompiler: Error: O método 'usarHabilidade()' deve ser implementado pela subclasse!
// Comentário: O JavaScript não oferece a palavra-chave 'abstract' nativa para classes ou métodos. O mecanismo idiomático para simular uma classe ou método abstrato é lançar uma exceção (throw new Error) na classe base. O objeto pode ser instanciado normalmente, mas invocar o método abstrato que não foi sobrescrito pela classe filha gera um erro em tempo de execução, garantindo que o contrato da hierarquia seja cumprido.
