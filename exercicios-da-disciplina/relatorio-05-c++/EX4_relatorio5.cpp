#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int matriz_solar[5][5] = {0};
    int opcao = 0;

    while (opcao != 3) {
        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            int f, c;
            cout << "Digite a fileira (0-4): ";
            cin >> f;
            cout << "Digite a coluna (0-4): ";
            cin >> c;

            if (f >= 0 && f < 5 && c >= 0 && c < 5) {
                if (matriz_solar[f][c] == 0) {
                    matriz_solar[f][c] = 1;
                    cout << "Sucesso: Celula solar ativada!" << endl;
                } else {
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }
            }
        } else if (opcao == 2) {
            cout << "Mapa da Matriz Solar" << endl;
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << matriz_solar[i][j] << "]";
                    if (j < 4) cout << " ";
                }
                cout << endl;
            }
        } else if (opcao == 3) {
            int ativas = 0;
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    if (matriz_solar[i][j] == 1) {
                        ativas++;
                    }
                }
            }
            int inativas = 25 - ativas;
            float capacidade = (ativas / 25.0f) * 100.0f;

            cout << "=== RELATORIO FINAL DE OPERACAO ===" << endl;
            cout << "Total de celulas ATIVAS: " << ativas << endl;
            cout << "Total de celulas INATIVAS: " << inativas << endl;
            cout << fixed << setprecision(2);
            cout << "Capacidade Operacional: " << capacidade << "%" << endl;
        }
    }

    return 0;
}