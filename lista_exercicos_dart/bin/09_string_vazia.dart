/*Escreva um algoritmo em Dart que verifique se o usuário informou o nome.
Se o nome estiver em branco, mostre a frase "Bem-vindo(a) visitante!".
Senão escreva "Bem-vindo(a) " e o nome do usuário (ex: "Bem-vindo(a) Marnei").*/
import 'dart:io';

void main(){
  //final nome = 'Marnei';
  //final nome ='';
  final nome = stdin.readLineSync()??'';
  final verifica = nome.isNotEmpty? 'Bem-vindo(a) ${nome}' : 'Bem-vindo(a) visitante!';
  print(verifica);

}