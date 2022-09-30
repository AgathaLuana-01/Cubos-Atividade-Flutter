/*Todo ano a Terra completa um movimento chamado Translação, que é uma volta ao redor do Sol, e dura 365 dias e 6 horas. A cada 4 anos, essas 6 horas somadas, adicionam 1 dia (6 * 4 = 24) no mês de fevereiro (dia 29) e o ano é chamado de Bissexto.

Para saber se um ano é Bissexto, verificamos se o ano é divisível por 4. Depois verificamos se o ano NÃO é divisível por 100, exceto se o ano for divisível por 400.

Escreva um algoritmo em Dart que verifique se o ano informado é Bissexto.
Se for, mostre na tela.*/
import 'dart:io';

void main() {
  //365 d 6 hrs
  // 4 anos -> 6 hrs 
  //1 dia (6 * 4 = 24) no mês de fevereiro (dia 29)
  //ano é divisível por 4
  //NÃO é divisível por 100
  //divisível por 400
  int ano = int.parse(stdin.readLineSync()!);
  
  if (ano % 4 == 0){
    if (ano % 100 != 0 || ano % 400 == 0 ){
        print('Ano bissexto');
    }
  }
}