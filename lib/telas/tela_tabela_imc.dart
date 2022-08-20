import 'package:app_imccalc/componentes/conteudo_da_tabela.dart';
import 'package:app_imccalc/constantes.dart';
import 'package:flutter/material.dart';
import '../componentes/cartao_padrao.dart';

class TelaTabelaImc extends StatelessWidget {
  ConteudoDaTabela tabela = ConteudoDaTabela();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'CLASSIFICAÇÃO SEGUNDO A OMS',
                style: kTabelaTextIMC,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: CartaoPadrao(
            cor: kCorAtivaCartaoPadrao,
            filhoCartao: Container(
              child: ConteudoDaTabela(),
            ),
          ),
        ),
      ]),
    );
  }
}
