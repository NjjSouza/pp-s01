#include <iostream>
using namespace std;

// função para calcular cenários de confrontos
int combinar_equipes(int n) {
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;
    return combinar_equipes(n - 1) + combinar_equipes(n - 2);
}

int main() {
    int n;
    cout << "Digite o tamanho do chaveamento (n): ";
    cin >> n;
    cout << "Total de cenarios de confrontos possiveis: " << combinar_equipes(n) << endl;
    return 0;
}