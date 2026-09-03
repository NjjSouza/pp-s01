use std::io::{self, Write};

// função que imprime todos os números no intervalo que terminam com o dígito informado
fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    println!("--- Números no intervalo terminados em {} ---", digito);

    // itera do limite inferior até o limite superior (inclusive)
    for numero in limite_inferior..=limite_superior {
        // obtém o último dígito utilizando o operador %
        if numero % 10 == digito {
            println!("{}", numero);
        }
    }
}

fn main() {
    // leitura do dígito final
    print!("Digite o dígito final desejado (0 a 9): ");
    io::stdout().flush().unwrap();
    let mut entrada_digito = String::new();
    io::stdin()
        .read_line(&mut entrada_digito)
        .expect("Falha ao ler o dígito");
    let digito: i32 = entrada_digito
        .trim()
        .parse()
        .expect("Por favor, digite um número inteiro");

    // leitura do limite inferior
    print!("Digite o limite inferior: ");
    io::stdout().flush().unwrap();
    let mut entrada_inf = String::new();
    io::stdin()
        .read_line(&mut entrada_inf)
        .expect("Falha ao ler o limite inferior");
    let limite_inferior: i32 = entrada_inf
        .trim()
        .parse()
        .expect("Por favor, digite um número inteiro");

    // leitura do limite superior
    print!("Digite o limite superior: ");
    io::stdout().flush().unwrap();
    let mut entrada_sup = String::new();
    io::stdin()
        .read_line(&mut entrada_sup)
        .expect("Falha ao ler o limite superior");
    let limite_superior: i32 = entrada_sup
        .trim()
        .parse()
        .expect("Por favor, digite um número inteiro");

    // chamada da função com os valores fornecidos
    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
