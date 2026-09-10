package main

import (
	"fmt"
)

// ValidarCodigoRastreio verifica se o código de rastreio possui 10 caracteres
func ValidarCodigoRastreio(codigo string) (bool, string) {
	// verifica se a quantidade de caracteres é igual a 10
	if len(codigo) == 10 {
		return true, "Código de rastreio registrado no sistema!"
	}
	return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
}

func main() {
	var codigo string

	// loop para continuar solicitando o código até que seja válido
	for {
		fmt.Print("Digite o código de rastreio: ")
		fmt.Scan(&codigo)

		// chama a função de validação
		valido, msg := ValidarCodigoRastreio(codigo)

		// se a validação retornar true, exibe a mensagem de sucesso e encerra o loop
		if valido {
			fmt.Println(msg)
			break
		}

		// a cada tentativa inválida, exibe a mensagem de erro retornada pela função
		fmt.Println(msg)
	}
}
