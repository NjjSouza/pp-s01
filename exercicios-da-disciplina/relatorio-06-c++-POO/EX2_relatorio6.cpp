#include <iostream>
#include <string>

using namespace std;

class LinkSocial { // classe para demonstrar encapsulamento
private:
    // atributos
    string nome;
    string arcana;
    int rank;

public:
    LinkSocial() : nome(""), arcana(""), rank(0) {} // construtor padrão

    // métodos modificadores
    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    // métodos de acesso
    string getNome() const {
        return nome;
    }

    string getArcana() const {
        return arcana;
    }

    int getRank() const {
        return rank;
    }

    // metodo subirRank
    void subirRank() {
        rank += 1;
    }
};

int main() {
    // objetos da classe
    LinkSocial link;

    // utilizando metodos modificadores para definição de dados
    link.setNome("Ryuji Sakamoto");
    link.setArcana("Carruagem");
    link.setRank(1);

    // exibindo com métodos de acesso
    cout << "=== DADOS INICIAIS DO LINK SOCIAL ===" << endl;
    cout << "Nome do Personagem: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank Inicial: " << link.getRank() << endl;

    // executando o metodo subirRank()
    cout << "\n[Afinidade fortalecida! Subindo de rank...]" << endl;
    link.subirRank();

    // confirmando aumento usando métodos de acesso
    cout << "\n=== DADOS ATUALIZADOS DO LINK SOCIAL ===" << endl;
    cout << "Nome do Personagem: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank Atualizado: " << link.getRank() << endl;

    return 0;
}