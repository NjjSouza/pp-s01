using System;
using System.Collections.Generic;

/* a classe Maga possui uma relacao de composicao com o Grimorio. O objeto Grimorio
e instanciado internamente no proprio construtor da Maga ("this.Grimorio = new Grimorio();").
Entao o Grimorio nasce junto com a Maga e sua existencia depende dela;
se for destruida, o Grimorio tambem deixa de existir.

a classe Maga possui uma relacao de agregacao com os objetos da classe Companheiro.
Os companheiros (neste exemplo, Fern e Stark) sao instanciados fora e antes da Maga na Main,
sendo associados a ela pelo metodo Recrutar(). Se a Maga deixar de existir, os
companheiros continuam existindo de forma independente. */

// classe Grimorio (usada em relacao de Composicao com Maga)
public class Grimorio
{
    // propriedade com valor inicial padrao "Nenhum"
    public string FeiticoFavorito { get; set; } = "Nenhum";

    // metodo que exibe o feitico favorito
    public void Abrir()
    {
        Console.WriteLine($"[Grimorio] Feitico favorito registrado: {FeiticoFavorito}");
    }
}

// classe Companheiro (usada em relacao de Agregacao com Maga)
public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Companheiro: {Nome} | Funcao: {Funcao}");
    }
}

// classe Maga
public class Maga
{
    public string Nome { get; set; }

    // grimorio associado por Composicao (criado dentro do construtor)
    public Grimorio Grimorio { get; private set; }

    // lista privada de Companheiros associados por Agregacao
    private List<Companheiro> companheiros;

    public Maga(string nome)
    {
        this.Nome = nome;
        // o Grimorio nasce dentro do construtor da Maga
        this.Grimorio = new Grimorio();
        this.companheiros = new List<Companheiro>();
    }

    // recebe um Companheiro que foi criado fora da classe
    public void Recrutar(Companheiro c)
    {
        companheiros.Add(c);
    }

    // exibe todos os companheiros do grupo
    public void MostrarGrupo()
    {
        Console.WriteLine($"=== Grupo de {Nome} ===");
        foreach (var c in companheiros)
        {
            c.Apresentar();
        }
    }

    // metodo para abrir o grimorio da maga
    public void Abrir()
    {
        Grimorio.Abrir();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // criando dois companheiros antes da Maga (Agregacao)
        Companheiro c1 = new Companheiro("Fern", "Maga Aprendiz");
        Companheiro c2 = new Companheiro("Stark", "Guerreiro");

        // Criando a Maga (Grimorio criado internamente por Composicao)
        Maga frieren = new Maga("Frieren");

        // recrutando os companheiros para o grupo
        frieren.Recrutar(c1);
        frieren.Recrutar(c2);

        // definindo o feitico favorito do grimorio
        frieren.Grimorio.FeiticoFavorito = "Zoltraak (Magia de Ataque Comum)";

        // chamando MostrarGrupo() e Abrir()
        frieren.MostrarGrupo();
        Console.WriteLine();
        frieren.Abrir();
    }
}
