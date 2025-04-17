import 'cidade.dart';

class Pessoa {
  String _nome;
  String _sobrenome;
  late double _peso;
  late double _altura;
  Cidade _cidade;
  final Function funcao;

  String get nome => _nome;
  String get sobrenome => _sobrenome;
  double get peso => _peso;
  double get altura => _altura;
  Cidade get cidade => _cidade;
  String get nomeCompleto => '$_nome $_sobrenome';

  set nome(String nome) => _nome = nome;
  set sobrenome(String sobrenome) => _sobrenome = sobrenome;
  set cidade(Cidade cidade) => _cidade = cidade;

  set peso(double peso) {
    if (peso <= 0) throw Exception('Peso inválido: deve ser maior que zero');
    _peso = peso;
  }

  set altura(double altura) {
    if (altura <= 0) {
      throw Exception('Altura inválida: deve ser maior que zero');
    }
    _altura = altura;
  }

  Pessoa(String nome, String sobrenome, double peso, double altura,
      Cidade cidade, this.funcao)
      : _nome = nome,
        _sobrenome = sobrenome,
        _cidade = cidade {
    this.peso = peso;
    this.altura = altura;
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  @override
  String toString() {
    return 'Pessoa{'
        'nome: $nomeCompleto, '
        'peso: $_peso kg, '
        'altura: $_altura m, '
        'cidade: $_cidade, '
        'IMC: ${calcularIMC().toStringAsFixed(2)}'
        '}';
  }
}
