/*Mostrar o dobro do número informado, apenas se ele for múltiplo de 5.
Instruções
Escreva um algoritmo em Dart que receba um número.
Mostre o dobro do número informado, apenas se ele for múltiplo de 5.*/
import 'dart:io';

void main(){
  int numero = int.parse(stdin.readLineSync()!);
  double multiplo = numero % 5;

  if (multiplo == 0){
    numero = numero * 2;
    print(numero);
  }

}