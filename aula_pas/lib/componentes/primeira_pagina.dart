import 'dart:html';

import 'package:aula_pas/componentes/campo_texto_cpf.dart';
import 'package:aula_pas/componentes/mascara.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class PrimeiraPagina extends StatefulWidget {
  final Key? key;
  const PrimeiraPagina({this.key}): super (key: key);

  @override
  State<PrimeiraPagina> createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Primeira Página'),backgroundColor: Colors.deepOrange),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Mascara(),
           Padding(
             padding: const EdgeInsets.all(15),
             // ignore: prefer_const_literals_to_create_immutables
             child: Column(children: [
                   const SizedBox(
                       width: 300,
                       child: TextField(
                         decoration: InputDecoration(
                             label: Text(
                               'CPF',
                             ),
                             hintText: 'Informe o CPF'),
                       )),
                      CampoTextoCpf(),
                  
                 ],),
           )
          ],
        ),
      ),
    );
  }
}