import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remover etiqueta debug
      debugShowCheckedModeBanner: false,
      home: Container(
        child: const Center(
          child: Text(
            "Flutter Gradiente",
            style: TextStyle(
              //propriedades do TextStyle
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
              wordSpacing: 2,
              decoration: TextDecoration.none, 
            ),
            ),
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 248, 16, 93),
              Color.fromARGB(255, 159, 17, 184),
              Color.fromARGB(255, 12, 189, 171),
            ],
          ),
        ),
      ),
    );
  }
}
