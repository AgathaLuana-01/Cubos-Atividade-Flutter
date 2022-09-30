/*Mostrar o quadrado de todos os números ímpares, de 1 até 200.

Instruções
Escreva um algoritmo em Dart que apresente o quadrado de todos os números ímpares, de 1 até 200.*/
void main() {
  int quadrado = 1;
  double impar;
  int result = 0;

  while (quadrado < 200){
    result = result + 1;
    impar = result % 2;
      if (impar != 0){
        quadrado = result * result;
        if (quadrado < 200){
          print(quadrado);
        }        
      }
  }  
}