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
double? calculoIMC ([dynamic A, dynamic B, dynamic X, dynamic Y]){
  // Variáveis auxiliares:
  var counter = 0;
  double? retorno;
  // Checando qual dos argumentos não foi passado a função com um valor:
  if(A == null){
    retorno = double.parse(X*B/Y);
    counter++;
  }
  else if (B == null){
    retorno = double.parse(Y*A/X);
    counter++;
  }
  else if (X == null){
    retorno = double.parse(Y*A/B);
    counter++;
  }
  else if (Y == null){
    retorno = double.parse(X*B/A);
    counter++;
  }
  // Caso esteja tudo certo! Fornece o resultado da regra de 3 truncado até 6 casas decimais:
  if(counter == 1){
    return double.parse((retorno)!.toStringAsFixed(6));
  }
  // Caso o usuário não forneça 3 parâmetros, retorna null de propósito e printa uma justificativa:
  else{
    print('Não foram fornecidos apenas 3 elementos!');
    return null;
  }
}