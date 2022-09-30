/*Objetivo
Mostrar todos os números pares menores que 50.
Instruções
Escreva um algoritmo em Dart que mostre os números pares menores que 50.
Casos de Testes
Saída: 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48*/

void main(){
  int par = 0;

  while (par < (50 - 2)){
    par = par + 2;
    print(par);
  }

}