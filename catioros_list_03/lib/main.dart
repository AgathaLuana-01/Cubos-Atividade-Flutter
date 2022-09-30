import 'package:flutter/material.dart';

void main() {
  runApp(const CatiorosList());
}

class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nomes = [
      "Dachshund",
      "Golden",
      "Bulldog",
      "Pug",
      "Spaniel",
      "Husky",
      "Border Collie",
      "Beagle",
      "Weimaraner",
      "Dalmata",
    ];

   final tabs = [
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
    ]; 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DefaultTabController(
        length: tabs.length, 
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Catiorros",
              style: TextStyle(fontSize: 32),
            ),
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              isScrollable: true,
              tabs: [
                for( final nome in nomes)
                  Tab(
                    text: nome,
                  ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for(final tab in tabs)
              Center(
                child: Image.network(tab),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
