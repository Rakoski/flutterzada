class Carro {
  String? marca;
  int ano;
  bool zeroKm;

  Carro(this.marca, this.ano, this.zeroKm);

  Carro.novo(this.marca)
      : ano = DateTime.now().year,
        zeroKm = true;

  Carro.usado(this.marca, this.ano) : zeroKm = false;
}
