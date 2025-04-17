// Exercício 7: Criando um Estoque de Produto
// Crie um objeto de Estoque com função anônima para atualizar a quantidade.

import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Fornecedor fornecedor = new Fornecedor(
      "Distribuidora socorro", "12.345.678/0001-90", "Av. amem, 123 - Céu",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  TipoProduto tipo = new TipoProduto("descricao", exibirTipo: () {
    print("PEÇA");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("metro", simbolo: "M", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "PEÇA DE COMOUTADOR", "MUITO BOA", exibirCategoria: () {
    print("peça de computador");
  });

  Produto produto = new Produto("Mouse", 10.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${10.99}");
  });

  Estoque(produto, 5, atualizarEstoque: () {
    print("se lokoo");
  });
}
