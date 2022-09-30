/*Tendo como entrada a altura e o sexo (F: feminino ou M: masculino) de uma pessoa.
Escreva um algoritmo em Dart que calcule e imprima seu peso ideal, utilizando as seguintes fórmulas:
Mulheres: (62.1 * altura) - 44.7
Homens: (72.7 * altura) - 58
Entrada:
  1.85, m

Saída:
  Peso ideal: 76.495 Kg
Entrada:
  1.65, F

Saída:
  Peso ideal: 57.765 Kg
*/
import 'dart:io';

void main(){
  //final altura = 1.85;
  print('Digite altura: ');
  double altura = double.parse(stdin.readLineSync()!);

  print('Digite o sexo, sendo (F: feminino ou M: masculino):');
  String sexo = stdin.readLineSync()??'';

  if (sexo == 'F' || sexo == 'f'){
    double F = (62.1 * altura) - 44.7;
    print('Peso ideal: ${F.toStringAsFixed(3)}kg');
  } else if (sexo == 'M' || sexo == 'm'){
    double M = (72.7 * altura) - 58;
    print('Peso ideal: ${M.toStringAsFixed(3)}kg');
  }

}