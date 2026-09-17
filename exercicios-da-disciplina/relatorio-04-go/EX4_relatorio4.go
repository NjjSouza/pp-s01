package main

import (
	"fmt"
)

// validarIngresso verifica se o setor é "VIP" e o código é 2026
func validarIngresso(setor string, codigo int) bool {
	// retorna true se ambas as condições forem atendidas
	if setor == "VIP" && codigo == 2026 {
		return true
	}
	return false
}

func main() {
	var setor string
	var codigo int

	// loop infinito para solicitar os dados até o ingresso ser válido
	for {
		fmt.Print("Digite o setor do ingresso: ")
		fmt.Scan(&setor)

		fmt.Print("Digite o código do ingresso: ")
		fmt.Scan(&codigo)

		// verifica o retorno da função
		if validarIngresso(setor, codigo) {
			fmt.Println("Acesso liberado à área VIP!")
			break // encerra o loop
		} else {
			fmt.Println("Ingresso ou setor inválido. Tente novamente.")
		}
	}
}
