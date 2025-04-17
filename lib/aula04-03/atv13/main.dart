import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Cliente cliente = new Cliente("helio kamakawa",
      endereco: "Rua dos lancheiros, oii, São Paulo-SP", atualizarEndereco: () {
    print("Endereço!");
  });

  TipoProduto tipo = new TipoProduto("Informática", exibirTipo: () {
    print("INFORMÁTICA");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("unidade", simbolo: "un", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "NOTEBOOK", "Computador portátil", exibirCategoria: () {
    print("notee");
  });

  Fornecedor fornecedor = new Fornecedor(
      "InfoTech", "56.789.012/0001-34", "Av. Paulista, 1000 - Centro",
      acaoFornecedor: () {
    print("Ação!!!!");
  });

  Produto produto = new Produto(
      "Notebook UltraBook Pro", 5499.90, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: UM MILHÃO DE DOLARES");
  });

  PedidoVenda pedidoVenda =
      new PedidoVenda(cliente, produto, 1, concluirVenda: () {
    print("Vendi");
  });

  ProdutoDesconto(produto, 15.0, DateTime.now(), DateTime(2025, 5, 1),
      aplicarDesconto: () {
    double precoOriginal = produto.preco;
    double valorDesconto = precoOriginal * 0.15;
    double precoComDesconto = precoOriginal - valorDesconto;
    double valorTotal = precoComDesconto * pedidoVenda.quantidade;

    print(
        "Desconto aplicado ao pedido do cliente ${pedidoVenda.cliente.nome}:");
    print("Produto: ${produto.nome}");
    print("Quantidade: ${pedidoVenda.quantidade}");
    print("Preço: R\$${precoOriginal.toStringAsFixed(2)}");
    print("Desconto: -R\$${valorDesconto.toStringAsFixed(2)}");
    print("Preço desconto: R\$${precoComDesconto.toStringAsFixed(2)}");
    print("Valor total do pedido: R\$${valorTotal.toStringAsFixed(2)}");
    print(
        "Economia total: R\$${(valorDesconto * pedidoVenda.quantidade).toStringAsFixed(2)}");
  });
}
