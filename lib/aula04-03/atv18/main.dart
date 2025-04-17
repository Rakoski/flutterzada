import 'package:namer_app/aula04-03/classes.dart';

class PedidoVendaFreteExpresso {
  PedidoVenda pedidoVenda;
  double valorFreteNormal;
  double percentualAdicional;
  void Function() calcularFreteExpresso;

  PedidoVendaFreteExpresso(
      this.pedidoVenda, this.valorFreteNormal, this.percentualAdicional,
      {required this.calcularFreteExpresso});
}

void main() {
  final cliente = Cliente('João Silva', endereco: 'Rua das Flores, 123',
      atualizarEndereco: () {
    print('Endereço atualizado');
  });

  final fornecedor = Fornecedor(
      'Fornecedor Eletrônicos', '98.765.432/0001-10', 'Av. Central, 1000',
      acaoFornecedor: () {
    print('Ação do fornecedor executada');
  });

  final tipoProduto = TipoProduto('Eletrônico', exibirTipo: () {
    print('Tipo: Eletrônico');
  });

  final categoriaProduto = CategoriaProduto(
      'Smartphones', 'Telefones inteligentes', exibirCategoria: () {
    print('Categoria: Smartphones');
  });

  final unidadeMedida =
      UnidadeMedida('Unidade', simbolo: 'un', atualizarUnidade: () {
    print('Unidade atualizada');
  });

  final produto = Produto(
      'Smartphone XYZ', 1999.90, tipoProduto, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print('Preço ajustado');
  });

  final pedidoVenda = PedidoVenda(cliente, produto, 1, concluirVenda: () {
    print('Venda concluída');
  });

  final pedidoVendaFreteExpresso = PedidoVendaFreteExpresso(
      pedidoVenda, 25.0, 80.0, calcularFreteExpresso: () {
    print("slk");
  });

  pedidoVendaFreteExpresso.calcularFreteExpresso();
}
