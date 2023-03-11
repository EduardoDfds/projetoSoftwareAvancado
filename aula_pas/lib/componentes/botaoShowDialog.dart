import 'package:aula_pas/controle/cpf_controller.dart';
import 'package:flutter/material.dart';

class BotaoShowDialog extends StatelessWidget {
  BotaoShowDialog(
      {super.key,
      required this.cpfDigitado,
      required this.texto,
      required this.tituloDialog});
  late String texto;
  late String tituloDialog;
  late String cpfDigitado;
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          var resultado = CpfController().validarCpf(cpfDigitado);
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(tituloDialog),
                content: Text(resultado),
              );
            },
          );
        },
        child: Text(texto),
      ),
    );
  }
}
