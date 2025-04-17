class Aluno {
  String nome;
  double nota;

  Aluno(this.nome, this.nota);

  bool get aprovado => nota >= 7.0;
}
