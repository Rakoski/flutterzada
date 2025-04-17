class Produto {
  String nome;
  double _preco;

  Produto(this.nome, this._preco);

  double get preco => _preco;
  set preco(double valor) {
    if (valor >= 0) _preco = valor;
  }

  void aplicarDesconto() {
    _preco = _preco * 0.9;
  }
}
