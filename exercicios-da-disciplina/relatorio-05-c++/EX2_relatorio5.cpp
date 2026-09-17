#include <iostream>
#include <iomanip>
using namespace std;

// função que calcula o produto das probabilidades
float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float confiabilidade = 1.0f; // f indica literal float
    for (int i = 0; i < tamanho; i++) {
        confiabilidade *= probabilidades[i];
    }
    return confiabilidade;
}

int main() {
    int N;
    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> N;

    float probabilidades[100];
    for (int i = 0; i < N; i++) {
        cout << "Digite a probabilidade do componente " << (i + 1) << " (ex: 0.95): ";
        cin >> probabilidades[i];
    }

    float confiabilidade = calcular_confiabilidade_sistema(probabilidades, N);

    cout << fixed << setprecision(4);
    cout << "Confiabilidade total do sistema: " << confiabilidade
         << " (" << setprecision(2) << confiabilidade * 100 << "%)" << endl;

    return 0;
}