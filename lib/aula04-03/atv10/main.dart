import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Fornecedor fornecedor = new Fornecedor(
      "Distribuidora heli o kamawaka",
      "23.456.789/0001-89",
      "Av. Tecnologia, 111111 - Centro", acaoFornecedor: () {
    print("Ação!");
  });

  TipoProduto tipo = new TipoProduto("Hardware", exibirTipo: () {
    print("HARDWARE");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("unidade", simbolo: "un", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto =
      new CategoriaProduto("MEMÓRIA RAM", "DDR4", exibirCategoria: () {
    print("Memória RAM");
  });

  Produto produto = new Produto(
      "Memória RAM 8GB", 250.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${275.99}");
  });

  PedidoCompra pedidoCompra =
      new PedidoCompra(fornecedor, produto, 5, realizarCompra: () {
    print("Compra realizada com sucesso!");
  });

  PedidoCompraFrete(pedidoCompra, 50.00, DateTime(2025, 4, 25),
      calcularFrete: () {
    double valorTotal = 0;

    double taxaPercentual = 0.02;
    double freteCalculado = 50.00 + (valorTotal * taxaPercentual);

    print("frete realizado:");
    print("Valor total: R\$${valorTotal.toStringAsFixed(2)}");
    print(
        "Taxa adicional (2%): R\$${(valorTotal * taxaPercentual).toStringAsFixed(2)}");
    print("Valor frete: R\$${freteCalculado.toStringAsFixed(2)}");
  });
}
