/*

1 - escreva o teste antes.
2 - codigique somente o necessário para cobrir o teste.
3 - não escreva mais testes antes de codificar.
*/

import 'package:aula_pas/controle/validar_cpf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  // CPF não pode ser vazio.
  
  test('Validar se o cpf é vazio',
  (){
    String cpf = "";
    var validarCpf = ValidarCPF();
    
    expect(()=> validarCpf.ehvazio(cpf), throwsException);
  });

  //CPF de possuir 14 caracteres

  test('CPF deve possuir 14 caracteres', () {
    String cpf = '11111111111111';

    var validarCpf = ValidarCPF();
    expect(validarCpf.validarQuantidadeCaractere(cpf), true);

    cpf = '111';
    expect(() => validarCpf.validarQuantidadeCaractere(cpf), throwsException);
  });

  //CPF deve possuir formato correto

  test('CPF deve possuir formato correto', () {
    String cpf = '111.111.111.111-11';

    var validarCpf = ValidarCPF();
    expect(validarCpf.validaFormato(cpf), true);

    cpf = '111';
    expect(() => validarCpf.validaFormato(cpf), throwsException);
  });

  //CPF sem mascara e sem digito deve possuir 9 numeros

  test('CPF deve possuir 9 numeros', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();
    List<int> listaNumerosCPF = validarCpf.gerarListaNumero(cpf);

    expect(listaNumerosCPF.length, 9);
  });

  //Deve calcular o primeiro digito

  test('Deve calcular o primeiro digito', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.cauculaPrimeiroDigito(cpf), 0);
  });

//Deve calcular o segundo digito

  test('Deve calcular o segundo digito', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.cauculaSegundoDigito(cpf), 0);
  });

    //Deve validar os  digitos

  test('Deve validar os digitos', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.validarDigitos(cpf), true);
  });
  
  
}