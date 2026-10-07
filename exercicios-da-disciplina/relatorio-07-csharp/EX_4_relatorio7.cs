using System;
using System.Collections.Generic;

// classe base que representa uma entidade cosmica
public class EntidadeCosmica
{
    public string Nome { get; set; }
    // propriedade com valor inicial padrao "Desconhecida"
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public EntidadeCosmica(string nome, string origem)
    {
        this.Nome = nome;
        this.Origem = origem;
    }

    // metodo virtual que so exibe a origem se ela for conhecida (diferente de "Desconhecida")
    public virtual void Manifestar()
    {
        Console.WriteLine($"[Entidade Cosmica] Nome: {Nome}");
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

// classe Profundo que herda de EntidadeCosmica
public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public Profundo(string nome, string origem) : base(nome, origem)
    {
    }

    // sobrescreve Manifestar() sem chamar o metodo da classe base
    public override void Manifestar()
    {
        Console.WriteLine($"[Profundo] {Nome} surge das profundezas do oceano entoando canticos astrais!");
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

// classe MiGo que herda de EntidadeCosmica
public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public MiGo(string nome, string origem) : base(nome, origem)
    {
    }

    // sobrescreve Manifestar() chamando primeiro base.Manifestar()
    public override void Manifestar()
    {
        base.Manifestar(); // executa primeiro o comportamento da classe pai
        Console.WriteLine($"-> A criatura fungoide Mi-Go vibra suas asas cirurgicas emitindo zumbidos estranhos.");
    }
}

// classe Pesquisador que cataloga relatos de entidades cosmicas
public class Pesquisador
{
    public string Nome { get; set; }

    // lista privada de EntidadeCosmica
    private List<EntidadeCosmica> catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this.catalogo = new List<EntidadeCosmica>();
    }

    // metodo para catalogar uma nova entidade
    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    // metodo que percorre o catalogo chamando Manifestar() de cada entidade
    public void LerCatalogo()
    {
        Console.WriteLine($"=== CATALOGO DE ENTIDADES COSMICAS - PESQUISADOR {Nome} ===\n");
        foreach (var entidade in catalogo)
        {
            entidade.Manifestar();
            Console.WriteLine("------------------------------------------------------------");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // criando uma entidade de cada classe
        EntidadeCosmica e1 = new EntidadeCosmica("A Cor que Caiu do Espaco"); // origem padrao desconhecida
        Profundo e2 = new Profundo("Dagon"); // origem padrao desconhecida
        MiGo e3 = new MiGo("Colono Extraterrestre");

        // definindo a origem de pelo menos uma entidade
        e3.Origem = "Yuggoth";

        // instanciando o pesquisador da Universidade Miskatonic
        Pesquisador pesquisador = new Pesquisador("Henry Armitage");

        // catalogando todas as entidades
        pesquisador.Catalogar(e1);
        pesquisador.Catalogar(e2);
        pesquisador.Catalogar(e3);

        // exibindo todos os relatos do catalogo
        pesquisador.LerCatalogo();
    }
}
