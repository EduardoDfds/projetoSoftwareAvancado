/*

1 - escreva o teste antes.
2 - codigique somente o necessário para cobrir o teste.
3 - não escreva mais testes antes de codificar.
*/

import 'package:aula_pas/controle/validar_cnpj.dart';
import 'package:aula_pas/controle/validar_cpf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  // CNPJ não pode ser vazio.
  
  test('Validar se o CNPJ é vazio',
  (){
    String cnpj = "";
    var validarCnpj = ValidarCnpj();
    
    expect(()=> validarCnpj.ehvazio(cnpj), throwsException);
  });

  //CNPJ de possuir 18 caracteres

  test('CNPJ deve possuir 18 caracteres', () {
    String cnpj = '123456789123456789';

    var validarCnpj = ValidarCnpj();
    expect(validarCnpj.validarQuantidadeCaractere(cnpj), true);

    cnpj = '123';
    expect(() => validarCnpj.validarQuantidadeCaractere(cnpj), throwsException);
  });

  //CNPJ deve possuir formato correto

  test('CNPJ deve possuir formato correto', () {
    String cnpj = '97.920.721/0001-51';

    var validarCnpj = ValidarCnpj();
    expect(validarCnpj.validaFormato(cnpj), true);

    cnpj = '123';
    expect(() => validarCnpj.validaFormato(cnpj), throwsException);
  });

  //CNPJ sem mascara e sem digito deve possuir 12 numeros

  test('CNPJ deve possuir 14 numeros', () {
    String cnpj = '97.920.721/0001-51';

    var validarCnpj = ValidarCnpj();
    List<int> listaNumerosCNPJ = validarCnpj.gerarListaNumero(cnpj);

    expect(listaNumerosCNPJ.length, 12);
  });

  //Deve calcular o primeiro digito

  test('Deve calcular o primeiro digito', () {
    String cnpj = '97.920.721/0001-51';

    var validarCnpj = ValidarCnpj();

    expect(validarCnpj.cauculaPrimeiroDigito(cnpj), 5);
  });

//Deve calcular o segundo digito

  test('Deve calcular o segundo digito', () {
    String cnpj = '97.920.721/0001-51';

    var validarCnpj = ValidarCnpj();

    expect(validarCnpj.cauculaSegundoDigito(cnpj), 1);
  });

  //Deve validar os  digitos

  test('Deve validar os digitos', () {
    String cnpj =  '97.920.721/0001-51';

    var validarCnpj = ValidarCnpj();

    expect(validarCnpj.validarDigitos(cnpj), true);
  });
  
  
}