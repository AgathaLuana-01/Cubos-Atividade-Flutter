
/*Escreva um algoritmo em Dart que receba um percentual de desconto e o preço de um produto.
Calcule esse desconto sobre o preço de compra do produto (um bem, um objeto).

Entradas: 10; 5; 23;
Apresentando o valor do desconto e o novo preço do produto.*/

import 'dart:io';

void main(){
  
  final desconto = int.parse(stdin.readLineSync()!);
  final produto = 500;
  final valorDesconto = produto * (desconto/100);
  final valorProdutoDesconto = produto - valorDesconto;

  print('Preço do produto: ${produto.toStringAsFixed(2)}');
  print('Desconto de ${desconto}%: ${valorDesconto.toStringAsFixed(2)}');
  print('Preço do produto com desconto: ${valorProdutoDesconto}');

}