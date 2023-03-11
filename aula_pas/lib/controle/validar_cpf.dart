class ValidarCPF {

  bool ehvazio(String cpf){
    if (cpf.isEmpty) throw Exception('CPF não pode ser vazio');
    return true;
  }

  bool validarQuantidadeCaractere(String cpf){

    if(cpf.length != 14) throw Exception('CPF menor que 14');
    return true;
  }

  bool validaFormato(String cpf) {
    
    var regExp = RegExp(r'\d{3}\.\d{3}\.\d{3}\-\d{2}');
    if(!regExp.hasMatch(cpf)) throw Exception ('CPF deve possuir o formato basico');

    return true;
  }

  List<int> gerarListaNumero(String cpf) {
    ehvazio(cpf);
    cpf = cpf.replaceAll('.', '').replaceAll('-', '');
    
    List<int> listaNumerosCpf = cpf.substring(0, 9).split('').map<int>((e) => int.parse(e)).toList();
    
    return listaNumerosCpf;
  }

  int cauculaPrimeiroDigito(String cpf) {
    var peso = 10;
    var digitoCalculado = 0;

    for(var n in gerarListaNumero(cpf)){
      digitoCalculado += peso *n;
      peso --;
    }

    digitoCalculado = 11 - (digitoCalculado % 11);
    if (digitoCalculado > 9) digitoCalculado = 0;

    var cpfsemMascara = cpf.replaceAll('.', '').replaceAll('-','');

    var digito = int.parse(cpfsemMascara.substring(9, 10));

    
    return digito;
  }

  int cauculaSegundoDigito(String cpf) {
    
    List<int> listaCPF = gerarListaNumero(cpf);
    listaCPF.add(cauculaPrimeiroDigito(cpf));

    var peso = 11;
    var digitoCalculado = 0;
    
    for (var n in listaCPF) {
      digitoCalculado += peso * n;
      peso--;
    }

    var cpfsemMascara = cpf.replaceAll('.', '').replaceAll('-', '');
    var digito = int.parse(cpfsemMascara.substring(10, 11)); 

    digitoCalculado = 11 - (digitoCalculado % 11);
    if (digito > 10) digitoCalculado = 0;


    return digito;
  }

  bool validarDigitos(String cpf) {

    var cpfsemMascara = cpf.replaceAll('.', '').replaceAll('-', '');
    var primeiroDigito = int.parse(cpfsemMascara.substring(9, 10));
    var segundoDigito = int.parse(cpfsemMascara.substring(10, 11)); 

    if (primeiroDigito != cauculaPrimeiroDigito(cpf))
      throw Exception('Primeiro digito incorreto') ;
    if (segundoDigito != cauculaSegundoDigito(cpf))
      throw Exception('Segundo digito incorreto');

    return true;
  }
}