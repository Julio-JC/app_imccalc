import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  final Color cor;
  final Widget? filhoCartao;
  final Function()?
      aoPressionar; // O ? é necessário pois no contrutor o Function não receve o required

  // ignore: use_key_in_widget_constructors
  const CartaoPadrao({required this.cor, this.filhoCartao, this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        margin: const EdgeInsets.all(20),
        // O BoxDecoration, já possui uma propriedade color que permite o color personalizado nele.
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: filhoCartao,
      ),
    );
  }
}
