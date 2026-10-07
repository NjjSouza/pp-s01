using System;

// classe que representa um combatente convocado para a defesa de Minas Tirith
public class CombatenteDeGondor
{
    // propriedades com encapsulamento (leitura publica e modificacao privada)
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }

    // propriedade Armamento com valor inicial padrao "Desarmado"
    public string Armamento { get; private set; } = "Desarmado";

    // construtor que preenche Nome, Povo e Posto
    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    // metodo para equipar uma arma no combatente
    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    // metodo para exibir os dados do combatente
    public void ApresentarUnidade()
    {
        Console.WriteLine($"Combatente: {Nome} | Povo: {Povo} | Posto: {Posto}");

        // armamento so exibido se for diferente de "Desarmado"
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== REGISTRO DE COMBATENTES EM MINAS TIRITH ===\n");

        // criando 3 combatentes convocados
        CombatenteDeGondor c1 = new CombatenteDeGondor("Aragorn", "Dunedain", "Capitao");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Legolas", "Elfo", "Arqueiro");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Peregrin Took", "Hobbit", "Guarda da Cidadela");

        // equipando combatentes (pelo menos um)
        c1.Equipar("Anduril");
        c2.Equipar("Arco dos Galadhrim");

        // apresentando todas as unidades
        c1.ApresentarUnidade();
        Console.WriteLine("---------------------------------------------");
        c2.ApresentarUnidade();
        Console.WriteLine("---------------------------------------------");
        c3.ApresentarUnidade();
        Console.WriteLine("---------------------------------------------");

        // tentativa de alterar o Posto diretamente na Main (comentada devido a erro de compilacao gerado pelo private set):
        // c1.Posto = "Rei de Gondor"; // Erro: O acessador 'set' de 'CombatenteDeGondor.Posto' e inacessivel devido ao nivel de protecao (private set)
    }
}
