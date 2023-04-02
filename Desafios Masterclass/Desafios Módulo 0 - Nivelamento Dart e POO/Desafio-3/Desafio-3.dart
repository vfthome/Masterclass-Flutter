/*
//?------------------------------------------------------READ-ME----------------------------------------------------------------------------
    📚 A Regra de 3 é um método simples para encontrar um valor desconhecido em uma proporção, utilizando 
    a relação entre duas grandezas conhecidas.
    ✅ Para usar a Regra de 3, basta escrever as grandezas conhecidas em forma de fração e multiplicá-las
    cruzadamente paraencontrar o valor desconhecido. Por exemplo, se 2 maçãs custam R$4, podemos usar a Regra
    de 3 para descobrir quanto custam 5 maçãs:

    🍎 2 maçãs / R$4 = 5 maçãs / x

    ♓ Multiplicando cruzadamente:

    2 * x = 4 * 5

    x = R$10

    👀 Portanto, 5 maçãs custam R$10.

    " Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução 
    da regra de 3, levando em consideração que será considerado o argumento vário como valor a ser
    encontrado, logo, poderá ter apenas um valor necessáriamente 'vazio'. "
//?-----------------------------------------------------------------------------------------------------------------------------------------
*/



// Função que faz a regra de 3 para os números fornecidos e retorna um double com o resultado:
double? regraDe3 ({double? A, double? B, double? X, double? Y}){
  // Variáveis auxiliares:
  double? retorno;

  // Confere quantos argumentos são nulos:
  var counter = 0;
  var variableList = [A, B, X, Y];
  for (var element in variableList) {
    if(element == null){
      counter++;
    }
  }

  print('Resultado da regra de 3:');

  // Checando qual dos argumentos não foi passado a função com um valor:
  if(counter == 1){
    if(A == null){
      retorno = X!*B!/Y!;
    }
    else if (B == null){
      retorno = Y!*A/X!;
    }
    else if (X == null){
      retorno = Y!*A/B;
    }
    else if (Y == null){
      retorno = X*B/A;
    }
    // Caso esteja tudo certo! Fornece o resultado da regra de 3 truncado até 3 casas decimais:
    if(counter == 1){
      return double.parse((retorno)!.toStringAsFixed(3));
    }
  }

  // Caso o usuário não forneça 3 parâmetros, retorna null de propósito e printa uma justificativa:
  else{
    print('Não foram fornecidos apenas 3 elementos!');
    return null;
  }

}

void main() {
  print(regraDe3(Y: 11, B: 51, X: 7));
}