import 'dart:ffi';

class Pessoa {
  String _nome;
  String _sobrenome;
  double _peso;
  double _altura;

  String get nome => _nome;
  String get sobrenome => _sobrenome;
  double get peso => _peso;
  double get altura => _altura;

  set nome(String nome) => _nome = nome;
  set sobrenome(String sobrenome) => _sobrenome = sobrenome;

  set peso(double peso) {
    if (peso < 0) throw Exception('Peso inválido');
    _peso = peso;
  }

  set altura(double altura) {
    if (altura < 0) throw Exception('Altura inválida');
    _altura = altura;
  }

  Pessoa(String nome, String sobrenome, double peso, double altura)
      : _nome = nome,
        _sobrenome = sobrenome,
        _peso = peso,
        _altura = altura;

  double imc(double peso, double altura) {
    return peso * (altura * altura);
  }

  @override
  String toString() {
    return 'Pessoa{name: $nome, peso: $peso, sobrenome: $sobrenome}, imc: ${imc(peso, altura)} ';
  }
}
