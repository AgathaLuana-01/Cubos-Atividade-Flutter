import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:que_viagem_04/viagem.dart';

void main() {
  runApp(const QueViagem());
}

class QueViagem extends StatefulWidget {
  const QueViagem({Key? key}) : super(key: key);

  @override
  State<QueViagem> createState() => _QueViagemState();
}

class _QueViagemState extends State<QueViagem> {
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Viagem(),
    );
  }
  
}
