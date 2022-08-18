import 'package:flutter/material.dart';

class BotaoArredondado extends StatelessWidget {
  final IconData icone;
  final Function() aoPressionar;

  // ignore: use_key_in_widget_constructors
  const BotaoArredondado({
    required this.icone,
    required this.aoPressionar,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF7E7E7E),
      onPressed: aoPressionar,
      child: Icon(icone),
    );
  }
}
