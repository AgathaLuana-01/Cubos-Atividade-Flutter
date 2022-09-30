/*Considerando que, para um consórcio, sabe-se o número total de parcelas, a quantidade de parcelas pagas e o valor da parcela (fixa);
Escreva um algoritmo em Dart para calcular o saldo devedor do cliente.
Mostre na tela o valor total do consórcio e o saldo devedor.

Entrada:
  Total de Parcelas: 60
  Número de parcelas pagas: 18
  Valor das parcelas: R$ 566.78

Saída:
  Valor total do consórcio: R$ 34006.80
  Saldo devedor: R$ 23804.76
*/

void main(){
  final totalParcela = 60;
  final parcelasPagas = 18;
  final valorParcela = 566.78;
  
  final totalConsorcio = totalParcela * valorParcela;
  print('Valor total do consórcio: ${totalConsorcio.toStringAsFixed(2)}');
  final saldoDevedor = totalConsorcio - (valorParcela * parcelasPagas);
  print('Saldo devedor: ${saldoDevedor.toStringAsFixed(2)}');

}