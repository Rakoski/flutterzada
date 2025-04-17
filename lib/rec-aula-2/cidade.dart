import 'estado.dart';

class Cidade {
  final String nome;
  final Estado estado;

  const Cidade({required this.nome, required this.estado});

  @override
  String toString() => '$nome - ${estado.toString()}';
}
