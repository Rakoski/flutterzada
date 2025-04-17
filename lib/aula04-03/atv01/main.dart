import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Fornecedor(
      "Distribuidora socorro", "12.345.678/0001-90", "Av. amem, 123 - Céu",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  print("Fornecedor criado!");
}
