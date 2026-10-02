#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Hobbit { // classe base
protected:
    string nome; // atributo acessível pelas classes filhas

public:
    // construtor da classe
    Hobbit(string n = "") : nome(n) {}

    virtual ~Hobbit() {} // destrutor virtual

    virtual void fazerAtividade() {  // metodo virtual que habilita o polimorfismo dinâmico (ligação tardia)
        cout << "O hobbit " << nome << " esta aproveitando um dia tranquilo na Comarca." << endl;
    }
};

class Jardineiro : public Hobbit { // classe filha jardineiro
public:
    Jardineiro(string n) : Hobbit(n) {}

    void fazerAtividade() override { // sobrescreve o metodo fazerAtividade com a ação do jardineiro
        cout << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit { // classe filha cozinheiro
public:
    Cozinheiro(string n) : Hobbit(n) {}

    void fazerAtividade() override { // sobrescreve o metodo fazerAtividade com a ação do cozinheiro
        cout << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit { // classe filha fazendeiro
public:
    Fazendeiro(string n) : Hobbit(n) {}

    void fazerAtividade() override { // sobrescreve o metodo fazerAtividade com a ação do fazendeiro
        cout << "O fazendeiro " << nome << " esta colhendo vegetais e hortalicas em suas terras!" << endl;
    }
};

int main() {
    vector<Hobbit*> listaHobbits; // vetor para armazenar objetos do tipo Hobbit utilizando ponteiros da classe base

    // instanciando cada profissão e adicionando ao vetor
    listaHobbits.push_back(new Jardineiro("Samwise Gamgee"));
    listaHobbits.push_back(new Cozinheiro("Peregrin Tuk"));
    listaHobbits.push_back(new Fazendeiro("Meriadoc Brandebuque"));

    cout << "=== POLIMORFISMO: ATIVIDADES NA COMARCA ===" << endl;

    // percorrendo o vetor e chamando fazerAtividade() para cada elemento
    for (Hobbit* h : listaHobbits) {
        h->fazerAtividade();
    }

    for (Hobbit* h : listaHobbits) { // desalocar os objetos criados com new
        delete h;
    }

    return 0;
}