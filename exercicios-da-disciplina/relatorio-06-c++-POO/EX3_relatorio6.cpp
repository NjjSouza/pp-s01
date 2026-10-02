#include <iostream>
#include <string>

using namespace std;

class MembroInatel { // classe que representa um membro do Inatel
protected:
    string nome; // atributo que permite acesso pelas classes derivadas/filhas

public:
    MembroInatel(string n = "") : nome(n) {} // construtor base

    virtual ~MembroInatel() {} // destrutor virtual

    virtual void seApresentar() { // metodo que será sobrescrito nas classes filhas
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }
};

// classe filha Aluno que herda características de MembroInatel
class Aluno : public MembroInatel {
private:
    string curso;

public:
    // construtor que repassa o nome para a classe base e inicializa curso
    Aluno(string n = "", string c = "") : MembroInatel(n), curso(c) {}

    // sobrescrita do metodo seApresentar para esse aluno
    void seApresentar() override {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

// classe filha professor que herda de MembroInatel
class Professor : public MembroInatel {
private:
    string disciplina;

public:
    // construtor que repassa o nome para a classe base e inicializa disciplina
    Professor(string n = "", string d = "") : MembroInatel(n), disciplina(d) {}

    // sobrescrita do metodo seApresentar para esse professor
    void seApresentar() override {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    // instância de objetos (um aluno e outro professor)
    Aluno aluno("Carlos Silva", "Engenharia de Software");
    Professor professor("Dr. Pedro Henrique", "Programacao Orientada a Objetos");

    cout << "=== APRESENTACAO DOS MEMBROS DO INATEL ===" << endl;

    // chamando o metodo seApresentar() de cada objeto
    aluno.seApresentar();
    professor.seApresentar();

    return 0;
}