class CpfController {
  String validarCpf(String cpf) {
    print(cpf);
    if (!cpf.contains('.')) return 'CPF inválido, não contem ponto ';
    if (!cpf.contains('-')) return 'CPF inválido, não contem traço ';
    if (cpf.length < 14) return 'Quantidade de caracteres invalida ';

    var cpfDigitado,
        temp2,
        temp3,
        temp4,
        temp5,
        temp6,
        temp7,
        temp8,
        temp9,
        temp10,
        temp11,
        temp12,
        temp13,
        temp14,
        temp15;

    cpfDigitado = cpf.replaceAll('.', '');
    temp2 = cpfDigitado.replaceAll('-', '');
    temp3 = temp2.split('');

    temp4 = true;
    for (int c = 0; c < temp3.length - 1; c++) {
      if (temp3[c] == temp3[c + 1]) {
        temp4 = false;
      } else {
        temp4 = true;
        break;
      }
    }
    if (temp4) {
      temp5 = temp2.substring(0, 9).split('').map(int.parse).toList();
      temp6 = 0;
      temp7 = 10;
      temp8 = 0;
      for (var n in temp5) {
        temp8 = temp7 * n + temp8;
        temp7--;
      }
      temp9 = 11 - (temp8 % 11);
      if (temp9 > 9) {
        temp9 = 0;
      } else {
        temp9 = temp9;
      }
      temp10 = int.parse(cpf.substring(12, 13));
      if (temp9 == temp10) {
        temp11 = temp2.substring(0, 10).split('').map(int.parse).toList();
        temp12 = 11;
        temp13 = 0;
        for (var n in temp11) {
          temp13 = temp12 * n + temp13;
          temp12--;
        }
        temp14 = 11 - (temp13 % 11);
        if (temp14 > 9) {
          temp14 = 0;
        } else {
          temp14 = temp14;
        }
        temp15 = int.parse(cpf.substring(13, 14));
        if (temp14 == temp15) {
          return 'CPF válido\n${cpf}';
        } else {
          return 'CPF inválido';
        }
      } else {
        return 'CPF inválido';
      }
    } else {
      return 'CPF inválido';
    }
  }
}