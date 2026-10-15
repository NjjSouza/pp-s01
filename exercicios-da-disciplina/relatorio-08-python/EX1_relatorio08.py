class MortoVivo:
    def __init__(self, nome, almas, estus):
        self.nome = nome # público - qualquer parte do código pode acessar
        self._almas = almas # protegido (convenção _) - "use só dentro da classe e das filhas"
        self.__estus = estus # privado (__) - o Python faz "name mangling" e esconde de fora

    # Getter - forma controlada de ler um atributo privado
    def get_estus(self):
        return self.__estus

    # Setter - forma controlada de alterar um atributo privado encapsulamento - validar antes de aceitar o valor
    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!") # valor anterior é mantido

    def mostrar_status(self):
        return f"Mortovivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

# Herança - Clerigo "é um" MortoVivo, então já nasce com nome, _almas e __estus
class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        # super().__init__ inicializa a parte herdada (nome, _almas e __estus)
        super().__init__(nome, almas, estus)
        self.milagre = milagre # atributo exclusivo do Clerigo

    # sobrescrita - mesmo nome de metodo da classe pai, comportamento ampliado
    def mostrar_status(self):
        # super().mostrar_status() reaproveita o texto do pai, sem copiar o código dele
        return super().mostrar_status() + f" | Milagre: {self.milagre}"

# ---------------- main ----------------
clerigo = Clerigo("Petrus", 2000, 5, "Cura")
print(clerigo.mostrar_status())

clerigo.set_estus(15) # fora da faixa 0-10 exibe erro e mantém o valor anterior (5)
print(clerigo.mostrar_status())

clerigo.set_estus(10) # valor válido o setter aceita
print(clerigo.mostrar_status())

# Tentativa de acessar o atributo privado diretamente: print(clerigo.__estus)
# -> AttributeError: 'Clerigo' object has no attribute '__estus'
# Comentário: o Python renomeia __estus internamente para _MortoVivo__estus, então o nome "__estus" não existe fora da classe. Para ler o valor, o correto é usar o getter: clerigo.get_estus()