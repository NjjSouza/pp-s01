class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona invocada: {self.nome} (Arcano: {self.arcano})")

class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome # nome real
        self.codinome = codinome

class Lider:
    def __init__(self, codinome):
        self.codinome = codinome
        # composição - a Persona é criada dentro do __init__ do Lider,
        # não vem de fora, então só existe enquanto o Lider existir
        self.persona = Persona("Arsène", "Louco")
        # lista começa vazia - os aliados serão adicionados depois (agregação)
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        # o Aliado já existia antes, o Lider só guarda a referência a ele
        self._equipe.append(aliado)

    def infiltrar(self, palacio):
        print(f"Palácio de {palacio} invadido!")
        self.persona.invocar()
        print(f"Equipe de {self.codinome}:")
        for aliado in self._equipe:
            print(f" - {aliado.nome} ({aliado.codinome})")

# ---------------- main ----------------
# os aliados são criados antes do líder e existem de forma independente
ryuji = Aliado("Ryuji Sakamoto", "Skull")
ann = Aliado("Ann Takamaki", "Panther")

joker = Lider("Joker")
joker.recrutar(ryuji)
joker.recrutar(ann)

joker.infiltrar("Kamoshida")

# Composição x agregação
# - Composição (Lider -> Persona): a Persona é criada dentro do __init__ do Lider. Ela é "parte" dele e depende dele, então se o Joker deixar de existir, a Arsène também deixa de existir. Ninguém de fora cria nem guarda essa Persona.
# - Agregação (Lider -> Aliado): os aliados são criados fora e só depois recebidos em recrutar(). O Lider apenas guarda uma referência a eles. Se o Joker deixar de existir, Ryuji e Ann continuam existindo (as variáveis ainda apontam para eles).