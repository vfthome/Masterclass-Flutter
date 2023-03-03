/*
//?------------------------------------------------------READ-ME----------------------------------------------------------------------------
    📚 A Regra de 3 é um método simples para encontrar um valor desconhecido em uma proporção, utilizando a relação entre duas grandezas
    conhecidas.
    ✅ Para usar a Regra de 3, basta escrever as grandezas conhecidas em forma de fração e multiplicá-las cruzadamente paraencontrar o 
    valor desconhecido. Por exemplo, se 2 maçãs custam R$4, podemos usar a Regra de 3 para descobrir quanto custam 5 maçãs:

    🍎 2 maçãs / R$4 = 5 maçãs / x

    ♓ Multiplicando cruzadamente:

    2 * x = 4 * 5

    x = R$10

    👀 Portanto, 5 maçãs custam R$10.
//?-----------------------------------------------------------------------------------------------------------------------------------------
*/

// Recebe o peso e a altura o IMC do usuário e retorna uma float com 1 casa decimal como o resultado:
double calculoIMC (peso, altura){
  var imc = double.parse((altura/(peso*peso)).toStringAsFixed(1));
  return imc;
}