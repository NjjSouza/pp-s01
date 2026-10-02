#include <iostream>
#include <string>

using namespace std;

// classe banda no festival de musica
class Banda {
public: // atributos da classe
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    Banda(string n = "", int i = 0, float p = 0.0f, int e = 100) // construtor para facilitar a criação dos atributos
        : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda &rival) { // passagem por referencia para que alterações reflitam no objeto original
        cout << nome << " subiu ao palco para a apresentacao!" << endl;
        cout << "Potencia do som no duelo: " << potenciaSom << endl;

        rival.energia -= (int)potenciaSom; // subtrai potenciaSom da banda rival

        cout << "Apresentacao concluida! A energia da banda rival (" << rival.nome << ") foi reduzida." << endl;
    }

    void exibirStatus() {
        cout << "----------------------------------" << endl;
        cout << "Banda: " << nome << endl;
        cout << "Integrantes: " << integrantes << endl;
        cout << "Potencia do Som: " << potenciaSom << endl;
        cout << "Energia da Plateia: " << energia << endl;
        cout << "----------------------------------" << endl;
    }
};

int main() {
    // objetos da classe
    Banda banda1("The Rockers", 4, 30.0f, 100);
    Banda banda2("Iron Sound", 5, 25.0f, 100);

    // status inicial de ambas as bandas
    cout << "=== STATUS INICIAL DAS BANDAS ===" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    // duelo entre bandas
    cout << "\n=== INICIO DO DUELO ===" << endl;
    banda1.duelar(banda2);

    // status atualizado das bandas após o confronto
    cout << "\n=== STATUS ATUALIZADO APOS O CONFRONTO ===" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
