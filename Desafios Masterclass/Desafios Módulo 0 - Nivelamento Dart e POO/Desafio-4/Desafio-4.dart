/*
//?------------------------------------------------------READ-ME----------------------------------------------------------------------------
Construa uma classe que valide um CPF recebendo um valor String por construtor e  um método de validação retornando um booleano.
O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.

- Cálculo do primeiro dígito verificar:

1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos os primeiros 9 dígitos do CPF (111.444.777)
e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
 Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).

O Resultado deve ser igual ao primeiro dígito verificador.

- Cálculo do segundo dígito verificar:

1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos cada um dos números, da direita para a esquerda por
números crescentes a partir do número 2.

2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

O Resultado deve ser igual ao segundo dígito verificador.
//?-----------------------------------------------------------------------------------------------------------------------------------------
*/


// Recebe um CPF e retorna TRUE ou FALSE em referência a validação do mesmo:
class CPF {
  bool cpfValido = false;
  String cpf;
  int fator = 2;
  var cpfAtual;
  var digitoValidacao1 = 0;

  CPF({
    required this.cpf,
  });
  
  bool validarCPF(){

    // Expressão regular para validar se o formato do cpf é válido:
    var regExp = RegExp(r'^\d{3}\.\d{3}\.\d{3}\-\d{2}$');

    // Caso seja, vamos conferir os dígitos de validação:
    if(regExp.hasMatch(cpf)){
      for ( int i = cpf.length - 3; i > 0; i-- ) {
        print(isNumeric(cpf.substring(i, i+1)));
        if( isNumeric(cpf.substring(i, i+1)) ){
          print('Resultado: ' + (int.tryParse( cpf.substring(i, i+1) ) !* 2).toString());
          cpfAtual = cpf.substring(i, i+1);
          print('cpfAtual: ' + cpfAtual);
          digitoValidacao1 += int.tryParse( cpf.substring(i, i+1) ) !* 2;
          print('digitoValidacao1: ' + digitoValidacao1.toString());
          fator++;
        }
      }
    }

    // Caso contrário, retornamos FALSE para um CPF inválido:
    return false;
  }

  // Verifica se a string é composta por números inteiros apenas:
  bool isNumeric(String input) {
    String source = input.trim();
    if( int.tryParse(source) != null ){
      return true;
    }
    return false;
  }

}


void main() {
  CPF cpf_vitor = CPF(cpf: '013.241.711-11');
  print(cpf_vitor.cpf);
  cpf_vitor.validarCPF();
}
