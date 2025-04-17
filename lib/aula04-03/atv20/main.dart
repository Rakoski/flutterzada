import 'package:namer_app/aula04-03/classes.dart';

class ClientePreferencias {
  Cliente cliente;
  List<String> categoriasProdutosPreferidas;
  List<String> metodosPreferidos;
  void Function() atualizarPreferencias;

  ClientePreferencias(
      this.cliente, this.categoriasProdutosPreferidas, this.metodosPreferidos,
      {required this.atualizarPreferencias});
}

void main() {
  final cliente = Cliente('Ana Oliveira',
      endereco: 'Av. Paulista, 1500, Apto 502', atualizarEndereco: () {
    print('Endereço atualizado');
  });

  final clientePreferencias = ClientePreferencias(cliente, [
    'Orgânicos',
    'Sem Glúten',
    'Sem Lactose',
    'Veganos'
  ], [
    'Pix',
    'Cartão de Crédito',
    'Cartão Refeição'
  ], atualizarPreferencias: () {
    print("sllkl");
  });

  clientePreferencias.atualizarPreferencias();
}
