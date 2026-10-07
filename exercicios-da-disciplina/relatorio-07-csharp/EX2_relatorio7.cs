using System;
using System.Collections.Generic;

// classe base Pokemon
public class Pokemon
{
    // propriedades da classe base
    public string Especie { get; set; }
    public int Nivel { get; set; }

    // construtor que inicializa a especie e o nivel
    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    // metodo virtual que permite sobrescrita polimorfica nas classes derivadas
    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} (Nivel {Nivel}) usou um ataque generico: Investida!");
    }
}

// classe derivada TipoPlanta que herda de Pokemon
public class TipoPlanta : Pokemon
{
    // construtor repassando os parametros para o construtor da classe base
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    // sobrescrita de Atacar() sem chamar o metodo da classe base
    public override void Atacar()
    {
        Console.WriteLine($"{Especie} (Nivel {Nivel}) usou o golpe proprio: Folha Navalha!");
    }
}

// classe derivada TipoEletrico que herda de Pokemon
public class TipoEletrico : Pokemon
{
    // construtor repassando os parametros para o construtor da classe base
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    // sobrescrita de Atacar() chamando primeiro base.Atacar() e depois soltando a descarga
    public override void Atacar()
    {
        base.Atacar(); // chama a implementacao da classe base
        Console.WriteLine($"-> Em seguida, {Especie} soltou uma descarga eletrica: Choque do Trovao!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // criacao da lista generica de Pokemon (polimorfismo com List<Pokemon>)
        List<Pokemon> timePokemon = new List<Pokemon>();

        // adicionando um Pokemon de cada classe
        timePokemon.Add(new Pokemon("Eevee", 10)); // sem tipo definido (classe base)
        timePokemon.Add(new TipoPlanta("Sceptile", 36)); // tipo Planta
        timePokemon.Add(new TipoEletrico("Pikachu", 25)); // tipo Eletrico

        Console.WriteLine("=== BATALHA DE EXIBICAO POKEMON ===\n");

        // percorrendo a colecao com foreach e executando o metodo Atacar() de forma polimorfica
        foreach (Pokemon p in timePokemon)
        {
            p.Atacar();
            Console.WriteLine("---------------------------------------------");
        }
    }
}
