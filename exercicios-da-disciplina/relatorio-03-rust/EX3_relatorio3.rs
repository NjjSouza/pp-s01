use std::io;

// funcao que imprime todos os numeros no intervalo que terminam com o digito informado
fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    println!("--- Numeros no intervalo terminados em {} ---", digito);

    // itera do limite inferior ate o limite superior (inclusive)
    for numero in limite_inferior..=limite_superior {
        // obtem o ultimo digito utilizando o operador %
        if numero.abs() % 10 == digito {
            println!("{}", numero);
        }
    }
}

fn main() {
    // leitura do digito final
    println!("Digite o digito final desejado (0 a 9):");
    let mut entrada_digito = String::new();
    io::stdin().read_line(&mut entrada_digito).unwrap();
    let digito: i32 = entrada_digito.trim().parse().unwrap_or(0);

    // leitura do limite inferior
    println!("Digite o limite inferior:");
    let mut entrada_inf = String::new();
    io::stdin().read_line(&mut entrada_inf).unwrap();
    let limite_inferior: i32 = entrada_inf.trim().parse().unwrap_or(0);

    // leitura do limite superior
    println!("Digite o limite superior:");
    let mut entrada_sup = String::new();
    io::stdin().read_line(&mut entrada_sup).unwrap();
    let limite_superior: i32 = entrada_sup.trim().parse().unwrap_or(0);

    // chamada da funcao com os valores fornecidos
    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}