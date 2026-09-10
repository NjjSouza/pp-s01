package main

import (
	"fmt"
)

// gerarEscalaPlantao calcula e exibe os dias do mês em que ocorrerão os plantões
func gerarEscalaPlantao(n int) {
	fmt.Println("--- Escala de Plantão Técnico ---")

	// loop para calcular e exibir cada um dos n plantões
	for i := 1; i <= n; i++ {
		// os plantões ocorrem a cada 4 dias iniciando no dia 1
		dia := 1 + (i-1)*4
		fmt.Printf("Plantão %d: Dia %d do mês\n", i, dia)
	}
}

func main() {
	var n int

	// solicita ao usuário a quantidade de plantões
	fmt.Print("Digite a quantidade de plantões necessários: ")
	fmt.Scan(&n)

	// chama a função para exibir a escala
	gerarEscalaPlantao(n)
}
