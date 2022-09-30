/*Escreva um algoritmo em Dart que receba um valor.
Mostre todos os números de 1 até o valor informado.*/

import 'dart:io';

void main(){
  int value = int.parse(stdin.readLineSync()!);
  int stop = 1;

  while (stop <= value){
    print(stop);
    stop++;
  }
}