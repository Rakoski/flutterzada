import 'package:namer_app/aula04-03/classes.dart';

class ProdutoRestricaoIdade {
  Produto produto;
  int idadeMinima;
  void Function(int) verificarIdade;

  ProdutoRestricaoIdade(this.produto, this.idadeMinima,
      {required this.verificarIdade});
}

void main() {
  final fornecedor = Fornecedor(
      'Distribuidora Bebidas', '11.222.333/0001-44', 'Rod. Principal, km 10',
      acaoFornecedor: () {
    print('Ação do fornecedor executada');
  });

  final tipoProduto = TipoProduto('Bebida Alcoólica', exibirTipo: () {
    print('Tipo: Bebida Alcoólica');
  });

  final categoriaProduto = CategoriaProduto(
      'Destilados', 'Bebidas alcoólicas destiladas', exibirCategoria: () {
    print('Categoria: Destilados');
  });

  final unidadeMedida =
      UnidadeMedida('Mililitro', simbolo: 'ml', atualizarUnidade: () {
    print('Unidade atualizada');
  });

  final produto = Produto(
      'Whisky Premium', 189.90, tipoProduto, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print('Preço ajustado');
  });

  final produtoRestricaoIdade =
      ProdutoRestricaoIdade(produto, 18, verificarIdade: (int idadeCliente) {
    print("slk");
  });

  print("=== Teste com cliente menor de idade ===");
  produtoRestricaoIdade.verificarIdade(16);

  print("\n=== Teste com cliente maior de idade ===");
  produtoRestricaoIdade.verificarIdade(21);
}
