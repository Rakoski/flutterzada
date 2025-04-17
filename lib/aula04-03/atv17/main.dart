import 'package:namer_app/aula04-03/classes.dart';

class ProdutoValidade {
  Produto produto;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarValidade;

  ProdutoValidade(this.produto, this.dataFabricacao, this.dataValidade,
      {required this.verificarValidade});
}

void main() {
  final fornecedor = Fornecedor('Fornecedor Alimentos Frescos',
      '12.345.678/0001-90', 'Av. das Indústrias, 750', acaoFornecedor: () {
    print('Ação do fornecedor executada');
  });

  final tipoProduto = TipoProduto('Alimento', exibirTipo: () {
    print('Tipo: Alimento');
  });

  final categoriaProduto = CategoriaProduto(
      'Laticínios', 'Produtos derivados de leite', exibirCategoria: () {
    print('Categoria: Laticínios');
  });

  final unidadeMedida =
      UnidadeMedida('Litro', simbolo: 'L', atualizarUnidade: () {
    print('Unidade atualizada');
  });

  final produto = Produto('Leite Integral', 5.99, tipoProduto, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print('Preço ajustado');
  });

  final produtoValidade =
      ProdutoValidade(produto, DateTime(2025, 4, 1), DateTime(2025, 4, 30),
          verificarValidade: () {
    final DateTime agora = DateTime.now();
  });

  produtoValidade.verificarValidade();
}
