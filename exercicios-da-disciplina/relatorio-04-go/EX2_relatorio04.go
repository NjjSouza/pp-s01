package main

import (
	"fmt"
)

func main() {
	var v1, v2, v3 int

	// leitura da quantidade de vendas nos 3 trimestres
	fmt.Print("Digite as vendas do 1º trimestre: ")
	fmt.Scan(&v1)

	fmt.Print("Digite as vendas do 2º trimestre: ")
	fmt.Scan(&v2)

	fmt.Print("Digite as vendas do 3º trimestre: ")
	fmt.Scan(&v3)

	// calcula a soma total das vendas
	total := v1 + v2 + v3

	// verifica se a meta de 100 unidades foi atingida
	if total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		fmt.Printf("Total de vendas: %d unidades\n", total)

		// switch para classificar a categoria do vendedor
		var categoria string
		switch {
		case total >= 250:
			categoria = "Categoria Top Seller"
		case total >= 180 && total <= 249:
			categoria = "Categoria Sênior"
		case total >= 100 && total <= 179:
			categoria = "Categoria Pleno"
		}

		fmt.Printf("Classificação: %s\n", categoria)
	}
}