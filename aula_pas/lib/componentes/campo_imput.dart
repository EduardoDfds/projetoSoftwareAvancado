import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CampoInput extends StatelessWidget {
  CampoInput({super.key, required this.textoHint, required this.textoLabel, required this.vincularCampo});
  late String textoHint;
  late String textoLabel;
  String? valorInicial;
  ValueChanged<String>? vincularCampo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        onChanged: vincularCampo,
        decoration: InputDecoration(
            label: Text(
              textoLabel,
            ),
            hintText: textoHint),
      ),
    );
  }
}
