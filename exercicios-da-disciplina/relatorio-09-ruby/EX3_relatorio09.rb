# classe PhoneWave: o micro-ondas temporal conectado ao celular
class PhoneWave
  # metodo que imprime a mensagem e avisa sobre o envio temporal para o passado
  def enviar_dmail(mensagem)
    puts "Mensagem: \"#{mensagem}\" -> D-Mail enviado com sucesso para o passado!"
  end
end

# classe MembroDoLab: representa um membro do Laboratório de Gadgets
class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

# classe LaboratorioDeGadgets: gerencia o espaco, membros e invencoes
class LaboratorioDeGadgets
  def initialize
    # composicao: o PhoneWave e criado diretamente dentro do initialize do laboratorio, entao ele so existe dentro deste laboratorio
    @phonewave = PhoneWave.new

    # agregacao: o array comeca vazio, os membros ja existem fora e sao admitidos depois
    @membros = []
  end

  # adiciona um membro ja criado ao array @membros e imprime seu numero e nome
  def admitir(membro)
    @membros << membro
    puts "Membro admitido: Lab Mem #{membro.numero} - #{membro.nome}"
  end

  # imprime com .each todos os membros presentes e envia a mensagem temporal via PhoneWave
  def experimento(mensagem)
    @membros.each do |membro|
      puts "Lab Mem #{membro.numero}: #{membro.nome}"
    end
    @phonewave.enviar_dmail(mensagem)
  end
end

# ----------------- Execução Principal (Main) -----------------
# criando dois membros antes do laboratório (independência de ciclo de vida)
okabe = MembroDoLab.new("001", "Rintaro Okabe")
kurisu = MembroDoLab.new("004", "Kurisu Makise")

# criando a instancia do laboratorio
lab = LaboratorioDeGadgets.new

# admitindo os dois membros ja existentes
lab.admitir(okabe)
lab.admitir(kurisu)

# executando o experimento temporal
lab.experimento("Não entre na conferência do Dr. Nakabachi!")

# ==============================================================================
# explicação: o que é composição e o que é agregação neste programa:
# - composição (LaboratorioDeGadgets -> PhoneWave): PhoneWave é instanciado internamente no `initialize`
# de LaboratorioDeGadgets (@phonewave = PhoneWave.new). É uma relação todo-parte (forte) porque PhoneWave
# foi montado exclusivamente para o laboratório e não existe fora dele. Se o objeto LaboratorioDeGadgets
# for destruído ou coletado pelo Garbage Collector, a instância do PhoneWave também deixa de existir.
#
# - agregação (LaboratorioDeGadgets -> MembroDoLab): os objetos okabe e kurisu foram instanciados na main
# antes do laboratório existir e foram passados posteriormente como parâmetro para o método admitir(membro).
# Isso porque o laboratório apenas guarda uma referência a eles na coleção @membros. Trata-se de uma relação
# de associação fraca (tem-um). Se o laboratório deixar de existir, os membros continuam existindo normalmente
# no programa (as variáveis locais permanecem ativas na main).
# ==============================================================================
