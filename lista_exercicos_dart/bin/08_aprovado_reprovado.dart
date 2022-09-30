/*Escreva um algoritmo em Dart que receba 4 notas de um estudante.
Calcule a média das notas.
Verifique o valor da média das notas
Se a média for maior ou igual a 6, escreva "Aprovado", senão escreva "Reprovado".
Mostre na tela, a média e se está aprovado.
*/
void main(){
  final nota1 = 7;
  final nota2 = 6.3;
  final nota3 = 8;
  final nota4 = 5.5;
  
  final media = ((nota1+nota2+nota3+nota4)/4);
  print('Média: ${media.toStringAsFixed(1)}');
  
  final resultado = media >= 6? 'Aprovado!' : 'Reprovado!';
  print(resultado);
  
}