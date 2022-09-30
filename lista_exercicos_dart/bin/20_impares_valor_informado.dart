/*Mostrar todos os números ímpares de 1 até o valor informado.

Instruções
Escreva um algoritmo em Dart que receba um valor.
Mostre todos os números ímpares de 1 até o número informado.*/
import 'dart:io';

void main(){
  int numero = int.parse(stdin.readLineSync()!);
  int pare = 1;
  while (pare < numero){
    print(pare);
    pare = pare + 2;
  }
  print(numero);
}