// Exercício 2: Criando um Produto com Referência Anônima Crie um objeto de Produto com referência anônima.
// Defina o preço e categoria de forma simples.

import 'package:namer_app/aula04-03/classes.dart';

void main() {
  TipoProduto tipo = new TipoProduto("descricao", exibirTipo: () {
    print("PEÇA");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("metro", simbolo: "M", atualizarUnidade: () {
    print("unidade atualizada");
  });

  Fornecedor fornecedor = new Fornecedor(
      "Distribuidora socorro", "12.345.678/0001-90", "Av. amem, 123 - Céu",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "PEÇA DE COMOUTADOR", "MUITO BOA", exibirCategoria: () {
    print("peça de computador");
  });

  Produto("Mouse", 10.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${10.99}");
  });
}
