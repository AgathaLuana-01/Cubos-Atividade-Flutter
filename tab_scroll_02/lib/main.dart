import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const TabScroll());
  
}

class TabScroll extends StatelessWidget {
  const TabScroll({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Tab 1', 
      'Tab 2', 
      'Tab 3', 
      'Tab 4', 
      'Tab 5', 
      'Tab 6', 
      'Tab 7', 
      'Tab 8', 
      'Tab 9',
    ];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: tabs.length, 
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Tab Scroll",
              style: TextStyle(fontSize: 32),
            ),
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              isScrollable: true,
              tabs: [
                for(final tab in tabs)
                  Tab(
                    height: 90,
                    child: Text(
                      tab,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for(final tab in tabs)
                Center(
                  child: Text(
                    tab,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
            ],
          ),

        ),
      ),
      
    );
  }
}