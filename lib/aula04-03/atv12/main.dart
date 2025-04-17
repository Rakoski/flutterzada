import 'package:namer_app/aula04-03/classes.dart';

void main() {
  TipoProduto tipo = new TipoProduto("Eletrodoméstico", exibirTipo: () {
    print("ELETRODOMÉSTICO");
  });

  UnidadeMedida unidadeMedida =
      new UnidadeMedida("unidade", simbolo: "un", atualizarUnidade: () {
    print("unidade atualizada");
  });

  CategoriaProduto categoriaProduto =
      new CategoriaProduto("GELADEIRA", "refrigerantdor", exibirCategoria: () {
    print("Geladeira");
  });

  Fornecedor fornecedor = new Fornecedor(
      "eletro lider esta com voceee",
      "45.678.901/0001-23",
      "Av. Industrial, 7777 - Distrito Industrial", acaoFornecedor: () {
    print("Ação do fornecedor executada!");
  });

  Produto produto = new Produto(
      "Geladeira Frost Free 400L", 3499.90, tipo, categoriaProduto,
      unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: () {
    print("novo preço: R\$3699.90");
  });

  GarantiaProduto(produto, 3, "Garantia Estendida", ativarGarantia: () {
    DateTime dataAtual = DateTime.now();
    DateTime dataFinalGarantia =
        DateTime(dataAtual.year + 3, dataAtual.month, dataAtual.day);

    String dataFormatada =
        "${dataFinalGarantia.day}/${dataFinalGarantia.month}/${dataFinalGarantia.year}";

    print("Produto: ${produto.nome}");
    print(
        "Data de ativação: ${dataAtual.day}/${dataAtual.month}/${dataAtual.year}");
    print("Válida até: $dataFormatada");
    print(
        "Código da garantia: GE-${produto.nome.substring(0, 3).toUpperCase()}-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}");
  });
}
