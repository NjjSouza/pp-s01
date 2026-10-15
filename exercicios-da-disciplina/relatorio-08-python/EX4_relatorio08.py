from abc import ABC, abstractmethod

# interface - classe abstrata que define o "contrato" que toda unidade deve cumprir
class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass # sem implementação - cada filha é obrigada a escrever a sua

# parte que será usada na composição
class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo_cyberdeck):
        self.nome = nome
        # composição - o Cyberdeck é criado dentro do Netrunner (nasce e morre com ele)
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    # Implementação obrigatória do metodo da interface
    def executar_invasao(self):
        print(f"Netrunner {self.nome} usa o cyberdeck {self.cyberdeck.modelo} "
              f"para quebrar o gelo (ICE) de um servidor.")


class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    # mesma assinatura, jeito diferente de invadir
    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando o sinal da rede.")


class CelulaHacker:
    # agregação - os membros já foram criados fora e só são recebidos nessa parte
    # list[IUnidadeDeRede] aceita qualquer classe que siga a interface
    def __init__(self, nome, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula {self.nome} iniciando o ataque!")
        for membro in self.membros:
            # polimorfismo - a mesma chamada, comportamentos diferentes
            membro.executar_invasao()

# ---------------- main ----------------
netrunner = OperadorNetrunner("V", "Arasaka Mk.IV")
drone = DroneDeVigilancia("DR-77")

celula = CelulaHacker("Afterlife", [netrunner, drone])
celula.iniciar_ataque()

# Tentativa de instanciar a interface diretamente: unidade = IUnidadeDeRede()
# -> TypeError: Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao' (a mensagem pode variar um pouco conforme a versão do Python, mas o erro é sempre TypeError).
# Comentário: classes abstratas não podem ser instanciadas, elas só servem de molde. Só dá para criar objetos das filhas que implementam todos os métodos abstratos.