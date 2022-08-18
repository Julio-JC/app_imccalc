import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoInferio extends StatelessWidget {
  final String tituloBotao;
  final Function() aoPressionar;

  // ignore: use_key_in_widget_constructors
  const BotaoInferio({required this.tituloBotao, required this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        color: kCorContainerInferior,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kAlturaContainerInferior,
        child: Center(
          child: Text(
            tituloBotao,
            style: kBotaoGrandeTextStyle,
          ),
        ),
      ),
    );
  }
}
