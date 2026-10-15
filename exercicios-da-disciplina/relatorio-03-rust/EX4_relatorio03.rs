use std::io;

// funcao que calcula a pontuacao final do candidato e exibe a situacao
fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    // calcula a media aritmetica entre prova1 e prova2 (NPT)
    let npt = (prova1 + prova2) / 2.0;

    // calcula a Pontuacao Final com peso de 60% para NPT e 40% para redacao
    let pf = (npt * 0.6) + (redacao * 0.4);

    // verifica se a pontuacao final atinge a nota minima de aprovacao (60.0)
    if pf >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }

    pf
}

fn main() {
    // leitura das tres notas fornecidas pelo usuario
    println!("Digite a nota da Prova Teorica 1:");
    let mut e1 = String::new();
    io::stdin().read_line(&mut e1).unwrap();
    let prova1: f64 = e1.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Prova Teorica 2:");
    let mut e2 = String::new();
    io::stdin().read_line(&mut e2).unwrap();
    let prova2: f64 = e2.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Redacao:");
    let mut e3 = String::new();
    io::stdin().read_line(&mut e3).unwrap();
    let redacao: f64 = e3.trim().parse().unwrap_or(0.0);

    // chamada da funcao e exibicao da pontuacao final retornada
    let pontuacao_final = calcular_pontuacao(prova1, prova2, redacao);
    println!("Pontuacao Final: {:.2}", pontuacao_final);
}