/*Escreva um algoritmo em Dart que verifique se o usuário informou o valor.
Se o valor for nulo, mostre a frase "NullPointerException: Erro ao acessar um valor nulo na memória".
Senão escreva "Valor informado: " e o valor (ex: "Valor informado: 23").
Entrada:
  valor recebe 23
Saída:
  "Valor informado: 23"
Entrada:
  valor não recebe nada
Saída:
  "NullPointerException: Erro ao acessar um valor nulo na memória"*/
import 'dart:io';
//import 'package:test/expect.dart';

void main(){
  print('Digite um número: ');
  //var valor = null;
  //int? valor;
  int? valor = int.parse(stdin.readLineSync()??'');
  
  //var verificaValor = valor != null? 'Valor informado: $valor' : 'NullPointerException: Erro ao acessar um valor nulo na memória';
  // print(verificaValor);

  if (valor == null){
    print('NullPointerException: Erro ao acessar um valor nulo na memória');
  } else {
    print('Valor informado: $valor');
  }

}