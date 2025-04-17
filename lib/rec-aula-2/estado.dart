class Estado {
  final String nome;
  final String sigla;

  const Estado({required this.nome, required this.sigla});

  @override
  String toString() => '$nome ($sigla)';
}
