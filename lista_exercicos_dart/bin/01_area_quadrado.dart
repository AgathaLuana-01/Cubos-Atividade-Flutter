//import 'package:area_de_um_quadrado/area_de_um_quadrado.dart' as area_de_um_quadrado;
import 'dart:io';
void main() {
  
  //final ladoTeste = stdin.readLineSync();
  final lado = int.parse(stdin.readLineSync()!);
  final area = lado * lado;
  print('Area de um quadrado: $area');

}
