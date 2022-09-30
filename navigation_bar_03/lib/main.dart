import 'package:flutter/material.dart';

void main() {
  runApp(const MyNavigatorBar());
}

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade200,
          //lista de itens

          items: const [
            //Icon Home
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 36,
              ),
            ),

            //Ícone Configurações
            BottomNavigationBarItem(
              label: "Configurações",
              icon: Icon(
                Icons.settings,
                size: 36,
              ),
            ),

            //Ícone login
            BottomNavigationBarItem(
              label: "Login",
              icon: Icon(
                Icons.login,
                size: 36,
              )
            ),
          ],  
        ),
      ),     
    );
  }
}