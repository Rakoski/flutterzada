class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, [this._saldo = 0]);

  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  bool sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}
