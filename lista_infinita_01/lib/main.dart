import 'package:flutter/material.dart';

void main() {
  runApp(const ListaInfinita());
}

class ListaInfinita extends StatelessWidget {
  const ListaInfinita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink.shade300,
          title: Text(
            "Lista \"Infinita\"",
            style: TextStyle(
              color: Colors.teal.shade900,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        body: ListView.builder(
          //Informa quantos itens quer na lista
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white24,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 0.5),
              child: ListTile(
                leading: Icon(
                  Icons.star_rounded,
                  size: 32,
                  color: Colors.amber,
                ),
                title: Text(
                  //Não consigo colocarvalor index
                  "Item nº: $index ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 24,
                    color: Colors.pink,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
