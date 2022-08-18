import 'package:flutter/material.dart';
import '../constantes.dart';

class ConteudoDoCartao extends StatelessWidget {
  final IconData icone;
  final String sexo;

  // ignore: use_key_in_widget_constructors
  const ConteudoDoCartao({required this.icone, required this.sexo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 75.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          sexo,
          style: kDescricaoTextStyle,
        )
      ],
    );
  }
}
