import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Hostel());
}

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  final Color cor1 = const Color(0xFF91103B);
  final Color cor2 = const Color(0xFFE7DEE0);
  final Color cor3 = const Color(0xFFF9F9F9);
  final Color cor4 = const Color(0xFFD65454);
  List selecionados = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: cor1,
          centerTitle: true,
          title: const Text(
            "ErBienBi - Hospedagens",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 18,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: cor3,
          child: Column(
            children: [
              const Text(
                "Selecione as datas da sua reserva",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 7, //Cria Grid com 7 colunas
                  crossAxisSpacing: 1, //espaço vertical
                  mainAxisSpacing: 1, //espaço horizontal
                  children: List.generate(30, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          index == setSelecionado(selecionados, index)
                              ? selecionados.remove(index) //remove a seleção
                              : selecionados.add(index); //adciona a seleção
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(10),
                        color: index == setSelecionado(selecionados, index)
                            ? cor4
                            : cor2,
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: index == setSelecionado(selecionados, index)
                                ? cor3
                                : cor1,
                          ),
                        ),
                      ),
                    );
                  })),
              const SizedBox(height: 20),
              const Text(
                "Abril 2022",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int setSelecionado(List selecionados, int index) {
    //Verifica se o index ta na lista
    return selecionados.contains(index) //Retorna os selecionados se contiver o index
        ? index // Se sim, retorna index
        : -1; // Se não, retorna -1 (lista inicia em 0)

    /*Mesmo cod:
    if (selecionados.contains(index)){
      return index;
    } else {
      return -1;
    }

    */
  }
}
