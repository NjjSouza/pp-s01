#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    float capacidade_maxima;
    float peso_atual = 0.0f;

    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade_maxima;

    int opcao = 0;

    while (opcao != 4) {
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << fixed << setprecision(2);
            cout << "Carga Atual: " << peso_atual << " kg / " << capacidade_maxima << " kg" << endl;
            cout << "Espaco Disponivel: " << (capacidade_maxima - peso_atual) << " kg" << endl;
        } else if (opcao == 2) {
            float peso_pacote;
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> peso_pacote;
            if (peso_atual + peso_pacote > capacidade_maxima) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            } else {
                peso_atual += peso_pacote;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
        } else if (opcao == 3) {
            float peso_remover;
            cout << "Digite o peso do pacote a ser removido (kg): ";
            cin >> peso_remover;
            if (peso_remover > peso_atual) {
                cout << "Alerta: Nao e possivel remover mais peso do que o carregado!" << endl;
            } else {
                peso_atual -= peso_remover;
                cout << "Pacote removido com sucesso!" << endl;
            }
        } else if (opcao == 4) {
            cout << "Encerrando sistema de telemetria..." << endl;
        }
    }

    return 0;
}