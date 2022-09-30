import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyFixedTab());
}

class MyFixedTab extends StatelessWidget {
  const MyFixedTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            //barra de título
            title: const Text("Meu Pet: A loja do seu pet"),
            centerTitle: false,
            backgroundColor: Colors.indigo.shade300,
            leading: ClipRRect(
              child: Image.network("https://illust-tegaki.net/wp-content/uploads/2021/07/660-tora.png"),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.pink,
              
              //layout contendo 3 abas (tabs)
              tabs: [
                Tab(
                  child: Text(
                    "CATIORROS",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    "GATIENOS",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    "PASSARINEOS",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),

          body: const TabBarView(
            children: [
              Center(child: Text(
                "CATIORROS",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),),
              Center(child: Text("GATIENOS"),),
              Center(child: Text("PASSARINOS"),),
          ],
          ),
        ),
      ),
      
    );
  }
}
