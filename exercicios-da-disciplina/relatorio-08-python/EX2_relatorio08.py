class HeroiOverwatch:
    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} ({self.funcao}) usa uma suprema genérica!")

# sem __init__ próprio - a classe herda o __init__ da classe base automaticamente
class HeroiTanque(HeroiOverwatch):
    # sobrescrita - mesmo metodo, comportamento diferente
    def usar_suprema(self):
        print(f"{self.codinome} ({self.funcao}) usa uma suprema de tanque: cria uma barreira enorme!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} ({self.funcao}) usa uma suprema de suporte: fortalece toda a equipe!")

    # metodo exclusivo - só existe em HeroiSuporte
    def curar_equipe(self):
        print(f"{self.codinome} está curando a equipe!")

# ---------------- main ----------------
# A lista é anotada com a classe base - qualquer filha cabe nela
herois: list[HeroiOverwatch] = [
    HeroiTanque("Reinhardt", "Tanque"),
    HeroiSuporte("Mercy", "Suporte"),
]

for heroi in herois:
    # polimorfirmo - a mesma chamada executa a versão de cada classe filha
    heroi.usar_suprema()
    # curar_equipe() só existe em HeroiSuporte, então se chamarmos em um Tanque, daria AttributeError
    # isinstance verifica o tipo real do objeto antes de chamar o metodo exclusivo
    if isinstance(heroi, HeroiSuporte):
        heroi.curar_equipe()