# <img src="https://res.cloudinary.com/teepublic/image/private/s--gpc7TJTO--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1585726530/production/designs/8796655_0.jpg"  width="3%" height="3%"><img src="https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/640px-Flag_of_Brazil.svg.png"  width="3%" height="3%"> Masterclass Flutterando:

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<img src="https://drive.google.com/uc?export=view&id=1RtT-kBI0mtDT-34B7ew-Ja-qC6H39hAa"  width="15%" height="15%"><img src="https://drive.google.com/uc?export=view&id=1r5ysUblim-ttHtcgH7jiKjzREbdBleQZ"  width="32%" height="32%">

Projeto criado para a masterclass de flutter ministrada por Jacob Moura.

# Sumário:

- [Teoria Dart](#Teoria)
- [Desafios Masterclass](#desafios-da-primeira-semana---nivelamento-dart)
- [Licença](#Licença)
- [Contato](#about-me)



## Módulo 1 - Nivelamento Dart e POO:


### Desafio Masterclass 1 - Índice de Massa Corporal (IMC):

> " O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
> O calculo é representado por Dividir o peso pela Altura ao quadradro² "

- Crie uma função que realize o calculo de IMC. ✅


### Desafio Masterclass 2 - Sequência de Fibonacci recursiva:

> " Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade. "

- Implemente a sequencia fibonacci com funcões recursivamente usando o Dart. 🔁


### Desafio Masterclass 3 - Regras de 3 com Dart:

> " Uma das coisas mais úteis que aprendemos no ensino médio é a 'Regra de 3'.
Consiste quando temos 3 valores e precisamos saber o quarto. "
> 
> Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os valores entre os dois grupos.
> 
> Ex:
Valor A está para Valor B, assim como, Valor X está para Valor Y.
Valor A x Valor Y = Valor B x Valor X

- Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3, levando em consideração que será considerado o argumento vário como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente "vazio". 🔁


### Desafio Masterclass 4 - Validação de CPF:

> " Construa uma classe que valide um CPF recebendo um valor String por construtor e  um método de validação retornando um booleano.
> O CPF tem dois dígitos verificadores que são os dois últimos números do CPF. "

- Cálculo do primeiro dígito verificar:

1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
 Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).

O Resultado deve ser igual ao primeiro dígito verificador.

- Cálculo do segundo dígito verificar:

1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

O Resultado deve ser igual ao segundo dígito verificador.


### Desafio Masterclass 5 - Validação de cartão de crédito (numeração):

> " O Mod 10 é um algoritmo para validação de cartões que é utilizado pela maioria das bandeiras em todo o mundo. A seguir mostro como utilizar o algoritmo para validar a numeração do cartão.
> Para validar o cartão de crédito siga esses passos: "

1. Separe o último dígito do cartão. Neste caso é o zero.

2. Multiplique a numeração do cartão, número por número sendo a coluna ímpar por 1 e a coluna par por 2, levando em conta que a primeira coluna inicia-se por 0 (zero). Se o valor da multiplicação tiver dois dígitos, separe e some cada unidade.  Em seguida, some todos os valores.

3. Com o resultado anterior, faça uma divisão por 10 para obter o resto da divisão:

4. Subtraia o resto da divisão por 10:

5. Faça a verificação do número que foi separado no item 1 com o resultado do item 4. Se os números forem iguais, o cartão é valido, e se forem diferentes, é invalido.


Para testes, segue dois  números de cartão:

Cartão inválido: 5419 8250 0346 1210.
Cartão válido: 4916 6418 5936 9080.


## Licença
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Este projeto utiliza a licença do MIT. Veja [LICENSE.md](LICENSE.md) para mais detalhes. 

## About Me:

- 🎓 Electronics Engineering Student at UFSC, graduating in 6 months. 
- 📬 Vitor Furtado Thomé - [vfthome@gmail.com](vfthome@gmail.com) 
- 👔 Linked-In: [https://www.linkedin.com/in/vfthome/](https://www.linkedin.com/in/vfthome/) 
- 🎯 Project Link: [https://github.com/vfthome/Masterclass-Flutter](https://github.com/vfthome/Masterclass-Flutter) 
