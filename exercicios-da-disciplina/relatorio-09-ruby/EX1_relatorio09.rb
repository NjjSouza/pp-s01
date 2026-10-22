# classe base que representa um coquetel generico do bar Afterlife
class CoquetelAfterlife
  # attr_reader permite apenas a leitura externa do atributo @nome (getter automatico)
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    # atributo com _ indica convencao de uso interno/protegido, sem attr_reader
    @_preco = preco
  end

  # getter manual para leitura controlada do preco
  def preco
    @_preco
  end

  # setter manual com encapsulamento: valida o preco antes de alterar
  # aceita apenas valores entre 5 e 200
  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!" # mantem o valor anterior
    end
  end

  # metodo que retorna (nao imprime) a ficha textual do drink
  def ficha
    "Drink: #{@nome} | Preço: E$ #{@_preco}"
  end
end

# heranca - DrinkDeLenda herda caracteristicas e comportamentos de CoquetelAfterlife
class DrinkDeLenda < CoquetelAfterlife
  # atributo exclusivo da classe filha, com leitura publica
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    # super repassa os parametros herdados (nome e preco) para o construtor da classe pai
    super(nome, preco)
    @lenda = lenda
  end

  # sobrescrita de metodo: estende o comportamento do metodo ficha da classe pai
  def ficha
    # super reaproveita a formatacao da classe base e acrescenta a lenda homenageada
    "#{super} | Lenda homenageada: #{@lenda}"
  end
end

# ----------------- Execução Principal (Main) -----------------
# criando um array com um CoquetelAfterlife e dois DrinkDeLenda
cardapio = [
  CoquetelAfterlife.new("Centzon Totochtin", 25),
  DrinkDeLenda.new("Johnny Silverhand", 150, "Johnny Silverhand"),
  DrinkDeLenda.new("Jackie Welles", 120, "Jackie Welles")
]

# percorrendo o array com .each para exibir a ficha de cada drink
cardapio.each do |drink|
  puts drink.ficha
end

# tentando reajustar o preco de um drink de lenda para um valor invalido (500)
# como 500 > 200, exibe "Preço inválido!" e mantem o valor anterior
cardapio[1].preco = 500
puts cardapio[1].ficha

# reajustando para um valor valido (80)
cardapio[1].preco = 80
puts cardapio[1].ficha

# tentativa de alterar o nome de um dos drinks diretamente na main: cardapio[0].nome = "Outro Coquetel"
# -> Erro no OneCompiler: NoMethodError (undefined method `nome=' for #<CoquetelAfterlife:...>)
# Comentário: O erro ocorre porque declaramos apenas `attr_reader :nome` na classe CoquetelAfterlife. Isso gera apenas o metodo de leitura (getter). Sem um setter correspondente (`nome=` ou `attr_writer`), o Ruby protege o atributo contra modificacoes externas, assegurando o encapsulamento.
