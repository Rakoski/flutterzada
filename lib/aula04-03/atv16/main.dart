import 'package:namer_app/aula04-03/classes.dart';

class PedidoCompraAtraso {
  PedidoCompra pedidoCompra;
  DateTime dataPrevistaEntrega;
  DateTime? dataRealEntrega;
  int diasAtraso;
  void Function() verificarAtraso;

  PedidoCompraAtraso(this.pedidoCompra, this.dataPrevistaEntrega,
      this.dataRealEntrega, this.diasAtraso,
      {required this.verificarAtraso});
}

void main() {
  final fornecedor = Fornecedor(
      'Fornecedor XYZ', '12.345.678/0001-90', 'Rua das Indústrias, 123',
      acaoFornecedor: () {
    print('Ação do fornecedor executada');
  });

  final tipoProduto = TipoProduto('Material de Construção', exibirTipo: () {
    print('Exibindo tipo de produto');
  });

  final categoriaProduto = CategoriaProduto(
      'Ferramentas', 'Ferramentas manuais e elétricas', exibirCategoria: () {
    print('Exibindo categoria do produto');
  });

  final unidadeMedida =
      UnidadeMedida('Unidade', simbolo: 'un', atualizarUnidade: () {
    print('Atualizando unidade de medida');
  });

  final produto = Produto('Martelo', 45.90, tipoProduto, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print('Ajustando preço do produto');
  });

  final pedidoCompra =
      PedidoCompra(fornecedor, produto, 10, realizarCompra: () {
    print('Realizando compra dos produtos');
  });

  final pedidoCompraAtraso = PedidoCompraAtraso(
      pedidoCompra, DateTime(2025, 4, 10), DateTime(2025, 4, 17), 7,
      verificarAtraso: () {
    print("slk");
  });

  final DateTime agora = DateTime.now();

  final diasAtrasoReal =
      agora.difference(pedidoCompraAtraso.dataPrevistaEntrega).inDays;

  if (diasAtrasoReal > 0) {
    print('Pedido com atraso de $diasAtrasoReal dias!');
    print('Fornecedor: ${pedidoCompraAtraso.pedidoCompra.fornecedor.nome}');
    print('Produto: ${pedidoCompraAtraso.pedidoCompra.produto.nome}');
    print(
        'Data prevista: ${pedidoCompraAtraso.dataPrevistaEntrega.day}/${pedidoCompraAtraso.dataPrevistaEntrega.month}/${pedidoCompraAtraso.dataPrevistaEntrega.year}');
    print('Data atual: ${agora.day}/${agora.month}/${agora.year}');
  } else {
    print('Pedido dentro do prazo de entrega!');
  }

  pedidoCompraAtraso.verificarAtraso();
}
