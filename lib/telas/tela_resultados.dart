import 'package:app_imccalc/telas/tela_tabela_imc.dart';
import 'package:flutter/material.dart';
import '../componentes/botao_inferior.dart';
import '../componentes/cartao_padrao.dart';
import '../constantes.dart';

class TelaResultados extends StatelessWidget {
  // Para que as informações sejam lancadas para esta tela precisa criar alguma propriedades
  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;

  // ignore: use_key_in_widget_constructors
  const TelaResultados({
    required this.resultadoIMC,
    required this.resultadoTexto,
    required this.interpretacao,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //É usado o .spaceEvenly, para que o eixo principal seja espaçado uniformemente
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resultado',
                    style: kTituloTextStyle,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFFFF5822),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TelaTabelaImc();
                          },
                        ),
                      );
                    },
                    child: const Text('Tabela IMC'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultadoTexto,
                    style: kResultadoTextStyle,
                  ),
                  Text(
                    resultadoIMC,
                    style: kIMCTextStyle,
                  ),
                  Text(
                    interpretacao,
                    textAlign: TextAlign.center,
                    style: kCopoTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BotaoInferio(
              aoPressionar: () {
                Navigator.pop(context);
              },
              tituloBotao: 'RECALCULAR'),
        ],
      ),
    );
  }
}
