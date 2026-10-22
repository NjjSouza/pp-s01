# modulos (Mixins e Interfaces em Ruby)
# modulo depoente: funciona como uma interface/contrato que exige a implementacao de depor
module Depoente
  def depor
    raise NotImplementedError, "Classes que incluem Depoente devem implementar o método 'depor'!"
  end
end

# modulo detivel: fornece uma implementacao pronta reutilizavel (mixin)
module Detivel
  def ser_detido
    # o metodo acessa nome, que e fornecido pelo attr_reader da classe que incluir este modulo
    puts "#{nome} foi levado(a) sob custódia pela Scotland Yard!"
  end
end

# classe base Envolvido: mantem apenas o estado comum (nome) e nao inclui nenhum modulo
class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

# TestemunhaOcular: herda de Envolvido e inclui apenas o contrato Depoente
class TestemunhaOcular < Envolvido
  include Depoente

  def initialize(nome, relato = "Vi uma pessoa de capa escura correndo pelo beco da Baker Street.")
    super(nome)
    @relato = relato
  end

  # implementacao concreta do metodo exigido pelo modulo depoente
  def depor
    puts "Depoimento da Testemunha #{nome}: \"#{@relato}\""
  end
end

# SuspeitoDoCrime: herda de Envolvido e inclui Depoente (contrato) e Detivel (capacidade de ser detido)
class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def initialize(nome, alibi = "Eu estava no Clube Diogenes durante toda a noite e tenho álibi.")
    super(nome)
    @alibi = alibi
  end

  # implementacao concreta do metodo exigido pelo modulo depoente
  def depor
    puts "Depoimento do Suspeito #{nome}: \"#{@alibi}\""
  end
end

# agregação: classe investigacao que agrega pessoas envolvidas no caso
class Investigacao
  attr_reader :caso

  def initialize(caso)
    @caso = caso
    @envolvidos = [] # agregacao: armazena referencias a envolvidos instanciados externamente
  end

  # adiciona um envolvido ja criado ao array de investigacao
  def registrar(envolvido)
    @envolvidos << envolvido
  end

  # polimorfismo: percorre todos os envolvidos chamando depor com .each
  def ouvir_todos
    puts "Caso: #{@caso}"
    @envolvidos.each do |envolvido|
      envolvido.depor
    end
  end

  # duck typing: usa .select com respond_to?(:ser_detido) para filtrar quem pode ser detido
  def acionar_scotland_yard
    detiveis = @envolvidos.select { |envolvido| envolvido.respond_to?(:ser_detido) }
    detiveis.each do |suspeito|
      suspeito.ser_detido
    end
  end
end

# ----------------- Execução Principal (Main) -----------------
# criando uma testemunha ocular e dois suspeitos antes da investigação
testemunha = TestemunhaOcular.new("Sra. Hudson", "Ouvi passos apressados e barulho de vidro quebrando às 23h.")
suspeito1 = SuspeitoDoCrime.new("Coronel Sebastian Moran", "Eu estava no clube de tiro e várias pessoas podem confirmar.")
suspeito2 = SuspeitoDoCrime.new("Professor James Moriarty", "Estava em uma conferência de matemática no exterior no momento do crime.")

# criando a investigação e registrando os envolvidos (agregação)
investigacao = Investigacao.new("O Mistério da Faixa Malhada")
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

# ouvindo todos os depoimentos polimorficamente
investigacao.ouvir_todos

# acionando a Scotland Yard apenas para quem responde a :ser_detido
investigacao.acionar_scotland_yard

# ==============================================================================
# conceitos de POO demonstrados:
# - Módulos como Interfaces/Contratos (Depoente): exigem implementação usando NotImplementedError.
# - Módulos como Mixins (Detivel): compartilham comportamentos prontos sem a necessidade de herança múltipla.
# - Polimorfismo: o método ouvir_todos invoca depor em cada elemento de @envolvidos, executando a implementação específica de cada classe.
# - Duck Typing e Introspecção: respond_to?(:ser_detido) verifica em tempo de execução se o objeto possui o método, garantindo que somente
# classes que incluíram detivel sejam detidas pela Scotland Yard.
# ==============================================================================
