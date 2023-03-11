import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CampoInput extends StatelessWidget {
  CampoInput({super.key, required this.textoHint, required this.textoLabel, required this.controle});
  var controle = TextEditingController();
  late String textoHint;
  late String textoLabel;
  String? valorInicial;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        controller: controle,
        decoration: InputDecoration(
            label: Text(
              textoLabel,
            ),
            hintText: textoHint),
      ),
    );
  }
}
