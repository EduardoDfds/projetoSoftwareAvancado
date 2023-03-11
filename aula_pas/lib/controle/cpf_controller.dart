class CpfController {
  String validarCpf(String cpfCompleto) {
//Temporario apagar

//>>>>>>>>>

    if (!cpfCompleto.contains('.')) return 'CPF inválido, não contem ponto ';
    if (!cpfCompleto.contains('-')) return 'CPF inválido, não contem traço ';
    if (cpfCompleto.length != 14) return 'Quantidade de caracteres invalida ';
// temp temp - cpf sem mascara
// Temp3 lista caracteres
    var cpfsemMascara = cpfCompleto.replaceAll('.', '').replaceAll('-', '');

    var cpfListaNumeros = cpfsemMascara
        .substring(0, 9)
        .split('')
        .map<int>((e) => int.parse(e))
        .toList();

    var ehNumerosIguais = true;
//temp4 = true;
    for (int c = 0; c < cpfListaNumeros.length; c++) {
      var elementoAnterior = cpfListaNumeros[c] - 1;
      var elementoAtual = cpfListaNumeros[c];
      if (elementoAnterior != elementoAtual) {
        ehNumerosIguais = false;
      }
      break;
    }

    if (ehNumerosIguais) return 'CPF deve possuir numeros diferentes';

    //temp5 = cpfsemMascara.substring(0, 9).split('').map(int.parse).toList(); Lista de numeros
    //temp6 = 0; retirado não utilizamos

    // temp7 = 10; peso primeiro numero
    var pesoElemento = 10;

    ///temp8 = 0; gitito calculado
    var digitoCalculado;
    for (var n in cpfListaNumeros) {
      digitoCalculado += pesoElemento * n;
      pesoElemento--;
    }
    digitoCalculado = 11 - (digitoCalculado % 11);
    if (digitoCalculado > 9) digitoCalculado = 0;

    var primeiroDigito = int.parse(cpfsemMascara.substring(9, 10));
    var segundoDigito = int.parse(cpfsemMascara.substring(10, 11));

    if (digitoCalculado != primeiroDigito) return 'Primeiro digito incorreto';

    cpfListaNumeros.add(digitoCalculado);

    pesoElemento = 11;
    digitoCalculado = 0;
    for (var n in cpfListaNumeros) {
      digitoCalculado += pesoElemento * n;
      pesoElemento--;
    }
    digitoCalculado = 11 - (digitoCalculado % 11);
    if (segundoDigito > 9) digitoCalculado = 0;

    if (segundoDigito != digitoCalculado) return 'Segundo digito incorreto';
    return 'CPF válido';
  }
}
/*
retirar if aninhados facilitando a leitura e entendimento do códigos
nomear de forma correta as varivés
*/
