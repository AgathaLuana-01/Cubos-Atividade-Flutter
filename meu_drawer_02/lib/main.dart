import 'package:flutter/material.dart';

void main() {
  runApp(const MenuDrawer());
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var keyboard_arrow_rigth;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade800,
          title: Text(
            "Menu Drawer",
            style: TextStyle(
              color: Colors.pink.shade100,
              fontSize: 24,
            ),
          ),
        ),

        //O Drawer é o Menu de Opções
        endDrawer: Drawer(
          backgroundColor: Colors.pink.shade50, 
          child: ListView(
            children: [
              //Flutter
              ListTile(
                title: const Text ("Flutter"),
                subtitle: const Text("Tudo são Widgets"),
                leading: const Icon(
                  Icons.flash_on,
                  color: Colors.blue,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  
                },
              ),
              
              //Dart
              ListTile(
                title: const Text ("Dart"),
                subtitle: const Text("É muito forte"),
                leading: const Icon(
                  Icons.mood,
                  color: Colors.redAccent,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  
                },
              ),
              
              //Café
              ListTile(
                title: const Text ("Cafessíneo"),
                subtitle: const Text("Quero cafééé"),
                leading: const Icon(
                  Icons.coffee,
                  color: Colors.brown,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  
                },
              ),
            ],
          ),
        ),



      ),
    );
  }
}
