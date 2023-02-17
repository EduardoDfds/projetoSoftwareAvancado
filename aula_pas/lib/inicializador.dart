import 'package:aula_pas/componentes/primeira_pagina.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inicializador extends StatelessWidget {
  const Inicializador({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Aplicativo',
      theme: ThemeData (primaryColor: Colors.deepOrange),
      home: const PrimeiraPagina(),
    );
  }
}