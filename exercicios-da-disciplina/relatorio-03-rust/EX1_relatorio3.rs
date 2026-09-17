use std::io;

// funcao que valida a placa do veiculo conforme os criterios do enunciado
fn validar_placa(placa: &str) -> bool {
    // ter pelo menos 7 caracteres de comprimento
    if placa.chars().count() < 7 {
        return false;
    }

    let mut cont_maiusculas = 0;
    let mut cont_numeros = 0;

    // percorre cada caractere da placa
    for c in placa.chars() {
        // contar letras maiusculas
        if c.is_ascii_uppercase() {
            cont_maiusculas += 1;
        }
        // contar numeros
        else if c.is_numeric() {
            cont_numeros += 1;
        }
    }

    // retorna true apenas se tiver pelo menos 4 maiusculas e pelo menos 2 numeros
    cont_maiusculas >= 4 && cont_numeros >= 2
}

fn main() {
    // estrutura loop para solicitar repetidamente ate que a placa seja valida
    loop {
        println!("Digite a placa do veiculo:");

        let mut entrada = String::new();
        if io::stdin().read_line(&mut entrada).is_err() {
            break;
        }

        // remove espacos e quebras de linha da digitacao
        let placa = entrada.trim();
        if placa.is_empty() {
            continue;
        }

        // validacao da placa usando a funcao
        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break; // encerra o laco de repeticao
        } else {
            println!("Placa invalida. Tente novamente!");
        }
    }
}