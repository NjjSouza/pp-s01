use std::io;

// funcao que verifica se a diferenca absoluta entre palpite e numero secreto e <= 5
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let diferenca = (palpite - numero_secreto).abs();
    diferenca <= 5
}

fn main() {
    // numero secreto fixo
    let numero_secreto: i32 = 42;

    // estrutura de repeticao continua
    loop {
        println!("Digite seu palpite:");

        let mut entrada = String::new();
        if io::stdin().read_line(&mut entrada).is_err() {
            break;
        }

        // converte o texto digitado para inteiro
        let palpite: i32 = match entrada.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Por favor, digite um numero valido.");
                continue;
            }
        };

        // verifica se o palpite esta dentro da margem de tolerancia (5)
        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!("Parabens, voce acertou o alvo!");
            println!(
                "Voce ficou a apenas {} unidade(s) do numero secreto ({})",
                distancia, numero_secreto
            );
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}