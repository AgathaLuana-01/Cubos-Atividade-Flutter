/*Mostrar o tamanho da palavra informada.
Instruções
Escreva um algoritmo em Dart que receba uma palavra.
Mostre o tamanho da palavra informada.*/
import 'dart:io';

void main(){
  String palavra = stdin.readLineSync()??'';
  int tamanho;
  tamanho = palavra.length;

  print('A palavra $palavra, tem $tamanho letras'); 

}