import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Pais brasil = new Pais("Brasil", exibirPais: () {
    print("País: Brasil");
  });

  Estado saopaulo = new Estado("São Paulo", pais: "Brasil", mudarPais: () {
    print("País alterado");
  });

  Cidade campinas =
      new Cidade("Campinas", "São Paulo", alterarEstado: (String novoEstado) {
    print("Estado alterado para: $novoEstado");
  });

  Cliente cliente = new Cliente("Maria Silva",
      endereco: "Rua das Flores, 123, Campinas-SP", atualizarEndereco: () {
    print("Endereço do cliente atualizado!");
  });

  TipoProduto tipo = new TipoProduto("Eletrônico", exibirTipo: () {
    print("ELETRÔNICO");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("unidade", simbolo: "un", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "SMARTPHONE", "Telefone inteligente", exibirCategoria: () {
    print("Smartphone");
  });

  Fornecedor fornecedor = new Fornecedor(
      "TechStore", "34.567.890/0001-12", "Av. Tecnologia, 456 - Centro",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  Produto produto = new Produto(
      "Smartphone Galaxy", 1999.90, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${2199.90}");
  });

  PedidoVenda pedidoVenda =
      new PedidoVenda(cliente, produto, 1, concluirVenda: () {
    print("Venda concluída com sucesso!");
  });

  PedidoVendaEntrega(pedidoVenda, DateTime(2025, 4, 20),
      "Av. Universitária, 456, Campinas-SP, CEP: 13084-123",
      organizarEntrega: () {
    int diasParaEntrega =
        DateTime(2025, 4, 20).difference(DateTime.now()).inDays;

    print("entrega para o cliente ${pedidoVenda.cliente.nome}:");
    print("Produto: ${pedidoVenda.produto.nome}");
    print("Quantidade: ${pedidoVenda.quantidade}");
    print("Endereço de entrega: ${pedidoVenda.cliente.endereco}");
    print("(em $diasParaEntrega dias)");
    print(
        "Código ras:${DateTime.now().millisecondsSinceEpoch.toString().substring(5)}");
  });
}
