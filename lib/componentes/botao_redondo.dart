import 'package:flutter/material.dart';

class BotaoRedondo extends StatefulWidget {
  const BotaoRedondo({super.key, this.cor, this.icone, this.onPress});
  final Color? cor;
  final Widget? icone;
  final Function()? onPress;

  @override
  State<BotaoRedondo> createState() => _BotaoRedondoState();
}

class _BotaoRedondoState extends State<BotaoRedondo> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Pressionado');
        _openTeamColors(context);
      },
      child: Container(
        margin: const EdgeInsets.all(30),
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: Colors.white70,
          shape: BoxShape.circle,
        ),
        child: Container(
          margin: const EdgeInsets.all(30),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  Widget? _openTeamColors(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cor do time da Esqueda'),
          content: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Cor azul escuro');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.check),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cor azul claro');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cor azul laranja');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cor amarelo');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Cor preto');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cor vermelho');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Cor branco');
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
    return null;
  }
}


// 

// Padding(
//       padding: const EdgeInsets.all(50),
//       child: ElevatedButton(
//         style: ButtonStyle(
//             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(1000),
//           side: BorderSide(width: 3,  color: Colors.white),
//         ))),
//         onPressed: () {},
//         child: const Icon(Icons.tiktok),
//       ),
//     );