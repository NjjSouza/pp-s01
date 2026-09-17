use std::io::{self, Write};

// função que verifica se a diferença absoluta entre palpite e número secreto é <= 5
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let diferenca = (palpite - numero_secreto).abs();
    diferenca <= 5
}

fn main() {
    // número secreto fixo
    let numero_secreto: i32 = 42;

    // estrutura de repetição contínua
    loop {
        print!("Digite seu palpite: ");
        io::stdout().flush().unwrap();

        let mut entrada = String::new();
        io::stdin()
            .read_line(&mut entrada)
            .expect("Falha ao ler a entrada");

        // converte o texto digitado para inteiro
        let palpite: i32 = match entrada.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Por favor, digite um número válido.");
                continue;
            }
        };

        // verifica se o palpite está dentro da margem de tolerância (5)
        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!("Parabéns, você acertou o alvo!");
            println!(
                "Você ficou a apenas {} unidade(s) do número secreto ({})",
                distancia, numero_secreto
            );
            break;
        } else {
            println!("Você passou longe! Tente novamente.");
        }
    }
}
