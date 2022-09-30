import 'package:flutter/material.dart';

class Viagem extends StatefulWidget {
  const Viagem({Key? key}) : super(key: key);

  @override
  State<Viagem> createState() => _ViagemState();
}

class _ViagemState extends State<Viagem> {
  Color corBase = Colors.blue.shade800;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Que viagem! Turismo",
            style: TextStyle(
              fontSize: 28,
              color: corBase,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber.shade600,
          bottom: TabBar(
            indicatorColor: corBase,
            tabs: [
              setTab("VOOS", Icons.flight_rounded),
              setTab("PASSEIOS", Icons.shopping_bag),
              setTab("MAPA", Icons.explore_rounded),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            setVoo(),
            setPasseio(),
            setMapa(),
          ],
        ),
      ),
    );
  }

  Tab setTab(String titulo, IconData icone) {
    return Tab(
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: corBase,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: Icon(
        icone,
        size: 36,
        color: corBase,
      ),
    );
  }

  Container setVoo() {
    return Container(
      padding: const EdgeInsets.all(45),
      child: Column(
        children: [
          const Text(
            "PARTIDA",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text("Abriel 26, 2022"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    "GRU",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Garulhos, Brazil"),
                ],
              ),
              const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.flight_rounded,
                  size: 48,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "OPO",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Porto, Portugal"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView setPasseio() {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pontos Turísticos do Porto",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //1º Ponte
              const SizedBox(height: 25),
              const Text(
                "Ponte Dom Luís I",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/ponte.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Ponte D. Luís I, é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro, em Portugal.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              //2º Torre
              const SizedBox(height: 25),
              const Text(
                "Torre dos Clérigos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/torre.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Igreja e Torre dos Clérigos é um notável conjunto arquitetónico situado na cidade do Porto, Portugal, sendo considerado o cartão-postal dessa cidade. O conjunto localiza-se no topo da Rua dos Clérigos, entre as ruas de São Filipe Néri e da Assunção.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              //3º Livraria
              const SizedBox(height: 25),
              const Text(
                "Livraria Lello",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset("assets/livraria.jpeg"),
              const SizedBox(height: 5),
              const Text(
                "A Livraria Lello situa-se no número 144 da Rua das Carmelitas, no Centro Histórico da cidade do Porto, em Portugal. Classificada como Monumento de Interesse Público, e em vias de se tornar Monumento Nacional, a Livraria Lello preserva a beleza original do seu edifício.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image setMapa() {
    return Image.asset("assets/mapa.png");
  }
}
