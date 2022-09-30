import 'package:flutter/material.dart';

void main() {
  runApp(const MyComponent());
}

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Block(color: Colors.teal, height: 120, width: 300),
        Block(color: Colors.blue.shade300, height: 80, width: 80),
        Block(color: Colors.pink.shade300, height: 150, width: 300),
        Block(color: Colors.yellow.shade900, height: 100, width: 200),
        Block(color: Colors.purple.shade300, height: 80, width: 250),
       ],
    );
  }
}

class Block extends StatelessWidget {
  final double height, width;
  final Color color;
  const Block({Key? key,
    required this.color,
    required this.height,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}
