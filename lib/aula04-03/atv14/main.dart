import 'package:namer_app/aula04-03/classes.dart';

void main() {
  TipoProduto tipo = new TipoProduto("Vestuário", exibirTipo: () {
    print("VESTUÁRIO");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("peça", simbolo: "pç", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "CAMISETA", "Camiseta do GRÊMIO DA MASSA", exibirCategoria: () {
    print("Camiseta");
  });

  Fornecedor fornecedor = new Fornecedor(
      "ModaFashion", "67.890.123/0001-45", "Rua do Comércio, 222 - Centro",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  Produto produto = new Produto(
      "Camiseta Premium Algodão", 89.90, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: R\$99. */");
  });

  ProdutoDisponibilidade(produto, true, "Em Estoque!!!", atualizarStatus: () {
    bool novaDisponibilidade = false;
    String novoStatus = "Fora DO ESTOQUE!!!";

    print("Alterando status do produto: ${produto.nome}");
    print("Novo status: $novoStatus");
    print(
        "Nova disponibilidade: ${novaDisponibilidade == true ? 'Disponível' : 'Indisponível'}");
    print(
        "Data da atualização: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}");
  });
}
