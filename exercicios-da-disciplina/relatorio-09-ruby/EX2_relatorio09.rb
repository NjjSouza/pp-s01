# abstração - classe base que define a interface comum para todos os instrumentistas
class Instrumentista
  # leitura publica para nome e instrumento
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  # metodo abstrato simulado: forca as subclasses a implementarem o comportamento
  def interpretar(peca)
    raise NotImplementedError, "O método 'interpretar' deve ser implementado pelas classes filhas!"
  end
end

# 2. classe filha Solista - sem initialize proprio (herda o do pai automaticamente)
class Solista < Instrumentista
  # sobrescrita (polimorfismo): conduz a melodia principal da peca
  def interpretar(peca)
    puts "#{@nome} toca #{@instrumento} na peça '#{peca}', conduzindo a melodia principal."
  end
end

# classe filha Acompanhador - sem initialize proprio (herda o do pai automaticamente)
class Acompanhador < Instrumentista
  # sobrescrita (polimorfismo): acompanha o ritmo do solista
  def interpretar(peca)
    puts "#{@nome} toca #{@instrumento} na peça '#{peca}', acompanhando o ritmo do solista."
  end
end

# classe Regente que gerencia e conduz os instrumentistas
class Regente
  attr_reader :nome

  def initialize(nome)
    @nome = nome
    @orquestra = [] # array que contera os instrumentistas convocados
  end

  # adiciona um instrumentista a orquestra usando o operador <<
  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  # conduz a orquestra chamando interpretar de cada instrumentista com .each
  def reger(peca)
    puts "Regente #{@nome} conduz a orquestra na apresentação da peça '#{peca}':"
    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  # usa .map para transformar os objetos em um novo array de textos com a classe (.class) e o nome
  def escalacao
    @orquestra.map do |instrumentista|
      "#{instrumentista.class}: #{instrumentista.nome}"
    end
  end
end

# ----------------- Execução Principal (Main) -----------------
# criando um Solista, um Acompanhador e um Regente
solista = Solista.new("Kaori Miyazono", "Violino")
acompanhador = Acompanhador.new("Kousei Arima", "Piano")
regente = Regente.new("Hiroko Seto")

# convocando os dois instrumentistas para a orquestra
regente.convocar(solista)
regente.convocar(acompanhador)

# regendo a apresentacao com uma peca classica
regente.reger("Introdução e Rondo Capriccioso")

# imprimindo com .each cada texto retornado por escalacao
regente.escalacao.each do |texto|
  puts texto
end

# criando uma instancia direta da classe base Instrumentista:
instrumentista_generico = Instrumentista.new("Músico Genérico", "Flauta")
# instrumentista_generico.interpretar("Introdução e Rondo Capriccioso")
# -> Erro no OneCompiler: NotImplementedError (O método 'interpretar' deve ser implementado pelas classes filhas!)
# Comentário: O Ruby nao possui a palavra-chave 'abstract' nativamente. O padrao da linguagem para definir classes e metodos abstratos e lancar NotImplementedError no corpo do metodo pai. Dessa forma, o objeto ate pode ser instanciado, mas qualquer tentativa de chamar o metodo nao implementado gerara uma excecao em tempo de execucao, exigindo a sobrescrita nas classes filhas.
