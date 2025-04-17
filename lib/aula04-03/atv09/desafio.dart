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
      "PEÇA DE COMPUTADOR", "MUITO BOA", exibirCategoria: () {
    print("peça de computador");
  });

  Produto produto = new Produto("Mouse", 10.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${10.99}");
  });

  ProdutoDesconto(produto, 20.0, DateTime(2025, 4, 15), DateTime(2025, 5, 15),
      aplicarDesconto: () {
    double precoComDesconto = produto.preco * 0.8;
    print(
        "Desconto aplicado! Preço antigo: R\$${produto.preco.toStringAsFixed(2)}, Novo preço: R\$${precoComDesconto.toStringAsFixed(2)}");
  });
}
