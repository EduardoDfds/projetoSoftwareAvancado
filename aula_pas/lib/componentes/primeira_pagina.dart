import 'package:aula_pas/componentes/botaoShowDialog.dart';
import 'package:aula_pas/componentes/campo_imput.dart';
import 'package:aula_pas/componentes/mascara.dart';
import 'package:aula_pas/controle/cpf_controller.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatefulWidget {
  final Key? key;
  PrimeiraPagina({this.key}) : super(key: key);
 

  @override
  State<PrimeiraPagina> createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {

   var cpfDigitado = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Primeira Página'),
          backgroundColor: Colors.deepOrange),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Mascara(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  CampoInput(textoHint: 'Informe seu CPF', textoLabel: 'CPF',  controle: cpfDigitado,),
                  BotaoShowDialog(
                    cpfDigitado: cpfDigitado.text,
                    texto: 'OK',
                    tituloDialog: 'Informe seu CPF ',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
