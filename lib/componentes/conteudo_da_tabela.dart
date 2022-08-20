import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constantes.dart';

class ConteudoDaTabela extends StatelessWidget {
  const ConteudoDaTabela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'QUANDO SEU IMC ESTA:',
          style: kTituloTabelaTextStyle,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Abaixo de 17:  Muito abaixo do peso",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Entre 17 e 18,49:  Abaixo do peso",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Entre 18,50 e 24,99:  Peso normal",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Entre 25 e 29,99:  Acima do peso",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Entre 30 e 34,99:  Obesidade I",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Entre 35 e 39,99:  Obesidade II (severa)",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Acima de 40:  Obesidade III (mórbida)",
          style: kDescricaoTextStyle,
        ),
        SizedBox(
          height: 20,
          width: 300,
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
