import 'dart:io';
/*Entrada: 2, 3, 8, 5
Saída: 46
Entrada: 14, 9, 17, 3
Saída: 177
Entrada: 6, 1, 7, 4
Saída: 34*/
void main(){

   final num1 = int.parse(stdin.readLineSync()!);
   final num2 = int.parse(stdin.readLineSync()!);
   final num3 = int.parse(stdin.readLineSync()!);
   final num4 = int.parse(stdin.readLineSync()!);
   final resultado = (num1*num2) + (num3*num4);
   print(resultado);

}