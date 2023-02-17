import 'package:aula_pas/inicializador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/*
PROBLEMAS:
  Excesso de código dificulta a legibilidade, e o entendimento, comentários são bons quando necessário.
  Sobre carga do arquivo, com varias classes no mesmo.
  Definição de nomes dos widget.
  Muita identação, dificulta a leitura, deixando o código confuso -> criação de objetos na passagem do parametros.
  Criar variaveis deporarias para facilitar a leitura.
  Complicar para descomplicar -> definir funções e componentes.

*/

void main() {
  Animate.restartOnHotReload = true;
  runApp(const Inicializador());
}

