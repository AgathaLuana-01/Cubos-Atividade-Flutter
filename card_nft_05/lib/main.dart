import 'package:flutter/material.dart';

void main() {
  runApp(const CardNFT());
}

class CardNFT extends StatelessWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
        color: Color.fromARGB(255, 11, 20, 49),
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                "https://images.pexels.com/photos/5011647/pexels-photo-5011647.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Equilibrium #3429",
              style: TextStyle(
                fontSize: 24,
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nossa coleção Equilibrium promove calma e balanço",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue.shade200,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "0.041 ETH",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled,
                    color: Colors.blue.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "restam 3 dias",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 30,
            color: Color.fromARGB(255, 127, 211, 253),
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.network(
                  "https://i.pinimg.com/474x/61/80/33/618033dc51a54a4e43321bc9acdc503d.jpg",
                  scale: 9.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Text(
                  "Criado por",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade200,
                  ),
                ),
              ),
              const Text(
                "Miau",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
