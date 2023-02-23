import 'package:flutter/material.dart';

class BotaoShowDialog extends StatelessWidget {
  BotaoShowDialog(
      {super.key,
      required this.texto,
      required this.tituloDialog,
      required this.menssagemAlert});
  late String texto;
  late String tituloDialog;
  late String menssagemAlert;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(tituloDialog),
                content: Text(menssagemAlert),
              );
            },
          );
        },
        child: Text(texto),
      ),
    );
  }
}
