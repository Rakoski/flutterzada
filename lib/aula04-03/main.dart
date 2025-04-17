import 'package:namer_app/aula04-03/classes.dart';

void main() {
  var fornecedor = Fornecedor(
      "Fornecedor A", "00.000.000/0001-00", "Rua dos Fornecedores, 123",
      acaoFornecedor: () {
    print("Ação do Fornecedor A executada!");
  });

  print("Fornecedor: ${fornecedor.nome}");

  fornecedor.acaoFornecedor();
}
