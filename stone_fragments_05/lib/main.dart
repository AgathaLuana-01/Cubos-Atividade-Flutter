import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  String image = "https://imgur.com/jTqNa7D.png";

  int fragments = 0;
  int pieces = 0;
  int stones = 0;

  void updateStone() {
    setState(() {  //setState é para atualizar o estado!!!
      fragments++;

      if (fragments == 10) {
        pieces++;
        fragments = 0;
      }
      if (pieces == 10) {
        pieces = 0;
        stones++;
      }

      if (stones > 0) {
        image = "https://imgur.com/JAeGRb1.png"; //Fotinha do Stone
      } else if (pieces > 0) {
        image = "https://imgur.com/IR5Sn6X.png"; //Fotinha do Piece
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(//detecta o toque na tela, tudo que esta no container conta como toque   
        onTap: updateStone, //chama o metodo para att

        child: Container(
          padding: const EdgeInsets.only(top: 45), //Afastamento
          decoration: const BoxDecoration(
            image: DecorationImage(
              //Imagem de fundo
              image: NetworkImage('https://imgur.com/etWX9CB.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            children: [
              SizedBox(
                child: Image.network(image),
                height: 250,
              ),

              //Pedras (Stones)
              Center(
                child: Text(
                  "Stones: $stones",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              Center(
                child: Text(
                  "Pieces: $pieces",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              Center(
                child: Text(
                  "Fragments: $fragments",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ), 
    );
  }
}
