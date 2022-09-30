/*Escreva um algoritmo em Dart que receba 2 valores inteiros.
Inverta os valores informados.
Mostre na tela os valores invertidos.
Ex: valorA passa a ter o conteúdo de valorB e valorB passa a ter o conteúdo de valorA.*/
void main (){
  int num1 = 3;
  int num2 = 5;
  List<int> lista = [num1, num2];

  print('Valores originais:');
  print('- Valor A: ${lista[0]}');
  print('- Valor B: ${lista[1]}');

  List<int> listaInversa = [...lista].reversed.toList();
  print('Valores invertidos:');
  print('- Valor A: ${listaInversa[0]}');
  print('- Valor B: ${listaInversa[1]}');





}