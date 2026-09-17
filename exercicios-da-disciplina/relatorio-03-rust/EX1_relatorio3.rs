use std::io::{self, Write};

// função que valida a placa do veículo conforme os critérios do enunciado (3)
fn validar_placa(placa: &str) -> bool {
    // ter pelo menos 7 caracteres de comprimento
    if placa.chars().count() < 7 {
        return false;
    }

    let mut cont_maiusculas = 0;
    let mut cont_numeros = 0;

    // percorre cada caractere da placa
    for c in placa.chars() {
        // contar letras maiúsculas
        if c.is_ascii_uppercase() {
            cont_maiusculas += 1;
        }
        // contar números
        else if c.is_numeric() {
            cont_numeros += 1;
        }
    }

    // retorna true apenas se tiver pelo menos 4 maiúsculas e pelo menos 2 números
    cont_maiusculas >= 4 && cont_numeros >= 2
}

fn main() {
    // estrutura loop para solicitar repetidamente até que a placa seja válida
    loop {
        print!("Digite a placa do veículo: ");
        io::stdout().flush().unwrap();

        let mut entrada = String::new();
        io::stdin()
            .read_line(&mut entrada)
            .expect("Falha ao ler a entrada");

        // remove espaços e quebras de linha (\n ou \r\n) da digitação
        let placa = entrada.trim();

        // validação da placa usando a função
        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break; // encerra o laço de repetição
        } else {
            println!("Placa inválida. Tente novamente!");
        }
    }
}
