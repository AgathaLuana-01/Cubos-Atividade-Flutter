import 'package:flutter/material.dart';

void main() {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Column(
        children: [
          Image.network("https://imgur.com/NrfOeJY.jpg"),
          //Obs: Inserir .jpg no final do link
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.teal,
              ),

              Container(
                height: 120,
                width: 120,
                color: Colors.pink,
              ),

              Container(
                height: 120,
                width: 120,
                color: Colors.yellow,
              ),
            ],
          )
        ],
      ),
      
    );
  }
}
