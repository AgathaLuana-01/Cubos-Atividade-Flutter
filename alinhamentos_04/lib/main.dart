import 'package:flutter/material.dart';

void main() {
  runApp(const Alinhamento());
}

class Alinhamento extends StatelessWidget {
  const Alinhamento({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //elemento cruzado
        mainAxisAlignment: MainAxisAlignment.end, //eixo principal
        children: [        
          Container(
            height: 120,
            width: 120,
            color: Colors.teal.shade300,
          ),

          Container(
            height: 120,
            width: 120,
            color: Colors.teal.shade200,
          ),

          Container(
            height: 120,
            width: 120,
            color: Colors.teal.shade100,
          ),
        ],
      ),
      
    );
  }
}