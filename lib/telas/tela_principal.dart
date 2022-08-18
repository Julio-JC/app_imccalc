import 'package:app_imccalc/telas/tela_resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../componentes/botao_arredondado.dart';
import '../componentes/botao_inferior.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/conteudo_cartao.dart';

import '../constantes.dart';
import 'tela_resultados.dart';
import 'package:app_imccalc/calculadora_imc.dart';

enum QualSexo {
  masculino('Masculino'),
  feminino('Feminino');

  final String value;
  const QualSexo(this.value);
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  QualSexo? qualSexoSelecionado;
  int altura = 180;
  int peso = 60;
  int idade = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF616161),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        qualSexoSelecionado = QualSexo.masculino;
                      });
                    },
                    cor: qualSexoSelecionado == QualSexo.masculino
                        ? kCorAtivaCartaoPadrao
                        : kCorInativaCartaoPadrao,
                    filhoCartao: const ConteudoDoCartao(
                      icone: FontAwesomeIcons.mars,
                      sexo: 'MASCULINO',
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        qualSexoSelecionado = QualSexo.feminino;
                      });
                    },
                    cor: qualSexoSelecionado == QualSexo.feminino
                        ? kCorAtivaCartaoPadrao
                        : kCorInativaCartaoPadrao,
                    filhoCartao: const ConteudoDoCartao(
                      icone: FontAwesomeIcons.venus,
                      sexo: 'FEMININO',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALTURA',
                    style: kDescricaoTextStyle,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          altura.toString(),
                          style: kNumeroTextStyle2,
                        ),
                        const Text(
                          'cm',
                          style: kDescricaoTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    activeColor: const Color(0xFFFF5822),
                    inactiveColor: const Color(0xFF808E98),
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                    },
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 220.0,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: kCorAtivaCartaoPadrao,
                    filhoCartao: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'PESO',
                              style: kDescricaoTextStyle,
                            ),
                            Text(
                              peso.toString(),
                              style: kNumeroTextStyle2,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BotaoArredondado(
                                    icone: FontAwesomeIcons.minus,
                                    aoPressionar: peso < 5
                                        ? null
                                        : () {
                                            setState(() {
                                              peso--;
                                            });
                                          },
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BotaoArredondado(
                                    icone: FontAwesomeIcons.plus,
                                    aoPressionar: () {
                                      setState(() {
                                        peso++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    filhoCartao: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'IDADE',
                            style: kDescricaoTextStyle,
                          ),
                          Text(
                            idade.toString(),
                            style: kNumeroTextStyle2,
                          ),
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BotaoArredondado(
                                    icone: FontAwesomeIcons.minus,
                                    aoPressionar: () {
                                      setState(() {
                                        idade--;
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BotaoArredondado(
                                    icone: FontAwesomeIcons.plus,
                                    aoPressionar: () {
                                      setState(() {
                                        idade++;
                                      });
                                    },
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    cor: kCorAtivaCartaoPadrao,
                  ),
                ),
              ],
            ),
          ),
          BotaoInferio(
              aoPressionar: () {
                CalculadoraIMC calc =
                    CalculadoraIMC(altura: altura, peso: peso);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TelaResultados(
                        resultadoIMC: calc.calcularIMC(),
                        resultadoTexto: calc.obterResultado(),
                        interpretacao: calc.obterInterpretacao(),
                      );
                    },
                  ),
                );
              },
              tituloBotao: 'CALULAR'),
        ],
      ),
    );
  }
}
