/*
//?------------------------------------------------------READ-ME----------------------------------------------------------------------------
    " Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros,
    começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores.
    A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu,
    no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto,
    conhecida na antiguidade. "

    📚 A sequênia de Fibonacci é dada pelo seguinte algoritmo equacionado matematicamente abaixo:

    Primeiro Termo:               F(0) = 0
    Segundo termo:                F(1) = 1
    Terceiro termo em diante:     F(n) = F(n-1) + F(n-2)

    Deste modo, adaptamos o algoritmo acima com o auxílio de funções recursivas.
//?-----------------------------------------------------------------------------------------------------------------------------------------
*/

// Função que calcula o valor do 'n-ésimo' termo da sequência de Fibonacci:
int fibonacci(int n){
  // Caso base:
  if(n < 2){
    return n;
  }
  //Recursividade:
  else{
    return fibonacci(n-1) + fibonacci(n-2);
  }
}

void main() {
  print('${fibonacci(3)}');
}