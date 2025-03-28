import 'dart:ffi';

import 'package:namer_app/aula03/cidade.dart';

class Pessoa {
  String _nome;
  String _sobrenome;
  double _peso;
  double _altura;
  Cidade _cidade;
  Function funcao;

  String get nome => _nome;
  String get sobrenome => _sobrenome;
  double get peso => _peso;
  double get altura => _altura;
  Cidade get cidade => _cidade;

  set nome(String nome) => _nome = nome;
  set sobrenome(String sobrenome) => _sobrenome = sobrenome;
  set cidade(Cidade cidade) => _cidade = cidade;

  set peso(double peso) {
    if (peso < 0) throw Exception('Peso inválido');
    _peso = peso;
  }

  set altura(double altura) {
    if (altura < 0) throw Exception('Altura inválida');
    _altura = altura;
  }

  Pessoa(String nome, String sobrenome, double peso, double altura,
      Cidade cidade, this.funcao)
      : _nome = nome,
        _sobrenome = sobrenome,
        _peso = peso,
        _altura = altura,
        _cidade = cidade;

  double imc(double peso, double altura) {
    return peso / (altura * altura);
  }

  @override
  String toString() {
    return 'Pessoa{name: $nome, peso: $peso, sobrenome: $sobrenome, cidade: ${cidade.nome}, estado: ${cidade.estado.nome}, UF: ${cidade.estado.sigla}}, imc: ${imc(peso, altura)} ';
  }
}
