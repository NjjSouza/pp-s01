use std::io;

// função que recebe o vetor e o limite K, retorna um novo vetor com os números maiores que o limite
#[allow(non_snake_case)]
fn filtrarMaiores(tabela: &Vec<i32>, limite: i32) -> Vec<i32> {
    let mut nova_tabela = Vec::new();

    // percorre cada número do vetor original
    for &num in tabela {
        // se for maior que o limite K, adiciona ao novo vetor
        if num > limite {
            nova_tabela.push(num);
        }
    }

    nova_tabela
}

fn main() {
    // leitura da quantidade N de elementos
    println!("Digite a quantidade de elementos (N):");
    let mut entrada_n = String::new();
    io::stdin()
        .read_line(&mut entrada_n)
        .expect("Falha ao ler a quantidade");
    let n: usize = entrada_n
        .trim()
        .parse()
        .expect("Por favor, digite um número inteiro válido");

    // preenchimento do vetor com os N números inteiros
    let mut tabela: Vec<i32> = Vec::new();
    for i in 1..=n {
        println!("Digite o elemento {}:", i);
        let mut entrada_elem = String::new();
        io::stdin()
            .read_line(&mut entrada_elem)
            .expect("Falha ao ler o elemento");
        let elemento: i32 = entrada_elem
            .trim()
            .parse()
            .expect("Por favor, digite um número inteiro válido");
        tabela.push(elemento);
    }

    // leitura do valor limite (K)
    println!("Digite o valor do limite (K):");
    let mut entrada_k = String::new();
    io::stdin()
        .read_line(&mut entrada_k)
        .expect("Falha ao ler o limite");
    let k: i32 = entrada_k
        .trim()
        .parse()
        .expect("Por favor, digite um número inteiro válido");

    // chamada da função para filtrar os números maiores que K
    let maiores = filtrarMaiores(&tabela, k);

    // exibição dos elementos da nova tabela no programa principal
    println!("--- Elementos maiores que {} ---", k);
    for num in maiores {
        println!("{}", num);
    }
}
