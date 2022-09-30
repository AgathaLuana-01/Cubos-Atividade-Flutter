/*Escreva um algoritmo em Dart que receba 2 valores.
Verifique qual o maior valor, qual o menor valor, ou se são iguais.
Mostre o resultado na tela.*/
import 'dart:io';

void main (){
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2){
    print('Maior valor: ${num1}');
    print('Menor valor: ${num2}');
  } else if (num1 < num2){
    print('Maior valor: ${num2}');
    print('Menor valor: ${num1}');
  } else {
    print('Valores iguais');
  }

}