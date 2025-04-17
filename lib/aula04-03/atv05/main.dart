// Exercício 5: Criando um Produto com Referência Anônima e Lote
// Crie um objeto de ProdutoLote com referência anônima e parâmetros nomeados.

import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Cliente cliente = new Cliente("Mateus", endereco: "Moro no VAZ DE LIMA",
      atualizarEndereco: () {
    print("conhece o Maracá, então, alí pra cima");
  });

  TipoProduto tipo = new TipoProduto("descricao", exibirTipo: () {
    print("PEÇA");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("metro", simbolo: "M", atualizarUnidade: () {
    print("unidade atualizada");
  });

  Fornecedor fornecedor = new Fornecedor(
      "Distribuidora socorro", "12.345.678/0001-90", "Av. amem, 123 - Céu",
      acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  CategoriaProduto categoriaProduto = new CategoriaProduto(
      "PEÇA DE COMOUTADOR", "MUITO BOA", exibirCategoria: () {
    print("peça de computador");
  });

  Produto produto = new Produto("Mouse", 10.00, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: ${10.99}");
  });

  ProdutoLote(produto, "1", new DateTime(2025), new DateTime(2028),
      verificarLote: () {
    print("lote verificado");
  });
}
