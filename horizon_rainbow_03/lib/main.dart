import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            "VlAVAAV Horizontal",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Rainbow2(cor: Colors.redAccent, texto: "Vermelho"),
            Rainbow2(cor: Colors.orangeAccent, texto: "Laranja"),
            Rainbow2(cor: Colors.yellow, texto: "Amarelo"),
            Rainbow2(cor: Colors.green, texto: "Verde"),
            Rainbow2(cor: Colors.blue, texto: "Azul"),
            Rainbow2(cor: Color.fromARGB(255, 4, 45, 78), texto: "Anil"),
            Rainbow2(cor: Colors.purple, texto: "Violeta"),
          ],
        ),
      ),
    );
  }
}

class Rainbow2 extends StatefulWidget {
  final Color cor;
  final String texto;

  const Rainbow2({Key? key, required this.cor, required this.texto})
      : super(key: key);

  @override
  State<Rainbow2> createState() => _Rainbow2State();
}

class _Rainbow2State extends State<Rainbow2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      color: widget.cor,
      child: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            widget.texto,
            style: const TextStyle(
              fontSize: 32,
              letterSpacing: 5,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
/* 
Row getRainbow() {
  return Row(
    children: [
      Container(
        width: 65,
        color: Colors.redAccent,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Vermelho',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.orangeAccent,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Laranja',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.yellow,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Amarelo',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.green,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Verde',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.blue,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Azul',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.blue.shade900,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Anil',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: 65,
        color: Colors.purple,
        child: const Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Violeta',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
 */