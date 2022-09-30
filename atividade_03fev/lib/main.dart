import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Coin());
}

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  _CoinState createState() => _CoinState();
}

//Desenvolver um aplicativo que faça a contagem dos cliques
// do usuário na tela e mostre a quantidade de “moedas”
// adquiridas a cada clique, utilizando setState.
class _CoinState extends State<Coin> {
  //tipos de moedas
  int copperCoin = 0;
  int silverCoin = 0;
  int goldCoin = 0;

  void updateCoin() {
    setState(() {
      //A cada clique + 1 copper
      copperCoin++;

      if (copperCoin == 10) {
        silverCoin++;
        copperCoin = 0;
      }

      if (silverCoin == 10) {
        goldCoin++;
        silverCoin = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      //detecta os cliques na tela
      home: GestureDetector(
        onTap: updateCoin,  //chama a função que faz a soma de toques
        
        child: Container(
          color: Colors.lightGreen, //Cor do fundo (do Container)
          padding: const EdgeInsets.only(top: 55), //Afasta do Topo

          child: Column(
            children: [
              // Moeda de Cobre
              Center(
                child: Text(
                  "Copper: $copperCoin",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            
              //Moeada de Prata
              Center(
                child: Text(
                  "Silver: $silverCoin",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              //Moeda de Ouro
              Center(
                child: Text(
                  "Gold: $goldCoin",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

            ],)
        )

      ) 
    );
  }
}
