/*Construir um Menu de opções para gerenciar (manter) os registros dos usuários do sistema.
Instruções
Escreva um algoritmo em Dart que construa um menu de cadastro com as opções:
C) Create	(Cadastrar/Inserir)
R) Read		(Buscar/Ler)
U) Update	(Editar/Atualizar)
D) Delete	(Excluir/Apagar)
Mostre a opção escolhida pelo usuário.
Casos de Testes
Entrada:
  r (ou R)

Saída:
  "Buscar/Ler"*/
void main(){
  String opcao;
  opcao = 'R';
  switch (opcao){
    case 'c':
    case 'C':
    print('Cadastrar/Inserir');
    break;

    case 'r':
    case 'R':
    print('Buscar/Ler');
    break;

    case 'u':
    case 'U':
    print('Editar/Atualizar');
    break;

    case 'd':
    case 'D':
    print('Excluir/Apagar');
    break;

    default:
    print('Informe uma das opções do Menu');
  }



}