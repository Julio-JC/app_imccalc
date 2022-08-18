import 'package:flutter/material.dart';
import 'telas/tela_principal.dart';

void main() => runApp(const CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF616161),
        ),
        scaffoldBackgroundColor: const Color(0xFF616161),
      ),
      home: const TelaPrincipal(),
    );
  }
}