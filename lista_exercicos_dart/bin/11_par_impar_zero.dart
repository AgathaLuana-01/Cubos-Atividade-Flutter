/*Escreva um algoritmo em Dart que receba 1 valor inteiro.
Mostre se o valor informado é: Par, Ímpar ou Zero.*/
import 'dart:io';

void main (){
 // int valor = 11;
  //int valor = 32;
  //int valor = 0;
  double valor = double.parse(stdin.readLineSync()!);
  print('Número: $valor');
    
    if (valor == 0){
      print('Zero');
    } else {
      double resto = valor % 2;
       if (resto == 0){
        print('Par');
      } else {
        print('Impar');
      } 
    }


}
  
  
  /*if (resto == 1){
    print('Par');
  } else if (resto != 1 && resto > 0){
    print('Ímpar');
  } else {
    print('Zero');
  }*/

  

  

