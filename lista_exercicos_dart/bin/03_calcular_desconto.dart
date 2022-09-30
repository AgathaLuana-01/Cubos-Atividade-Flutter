import 'dart:io';

void main(){
  print('Isira o valor do produto: ');
  final valorProduto = double.parse(stdin.readLineSync()!);
  
  final desconto = valorProduto * 0.1;
  final valorProdutoComDesconto = valorProduto - desconto;
  print('Preço do produto: ${valorProduto.toStringAsFixed(2)}');
  print('Desconto de 10%: ${desconto.toStringAsFixed(2)}');
  print('Preço do produto com desconto: ${valorProdutoComDesconto.toStringAsFixed(2)}');
  print('');

}