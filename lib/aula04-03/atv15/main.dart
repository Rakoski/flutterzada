import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Fornecedor fornecedor = new Fornecedor(
      "SupriMENTOS INFORMATICA",
      "78.901.234/0001-56",
      "Av. TOP, 555 - Bairro TOP DOS TOP */", acaoFornecedor: () {
    int numeroParcelas = 5;
    double valorTotal = 12500.00;
    double valorParcela = valorTotal / numeroParcelas;
    double descontoAVista = valorTotal * 0.08;

    print("VT R\$${valorTotal.toStringAsFixed(2)}");
    print("1. À vista: R\$${(valorTotal - descontoAVista).toStringAsFixed(2)}");
    print(
        "2. EM $numeroParcelas vezes de DINHEIRO ${valorParcela.toStringAsFixed(2)} sem juros");
    print(
        "3. \$${(valorTotal * 1.05 / 10).toStringAsFixed(2)} com juros de 5%");
  });

  fornecedor.acaoFornecedor();

  TipoProduto tipo = new TipoProduto("Hardware", exibirTipo: () {
    print("HARDWARE");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("unidade", simbolo: "un", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "SERVIDOR", "Servidor de impressao", exibirCategoria: () {
    print("Servidor");
  });

  Produto produto = new Produto(
      "Servidor MUITO GEANDE SE TA DOIDOO", 12500.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: Rmil mlhoes de reais");
  });

  PedidoCompra pedidoCompra =
      new PedidoCompra(fornecedor, produto, 1, realizarCompra: () {
    print("Fornecedor: ${fornecedor.nome}");
    print("Produto: ${produto.nome}");
  });

  pedidoCompra.realizarCompra();
}
