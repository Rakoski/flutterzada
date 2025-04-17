import 'dart:io';
import 'package:namer_app/rec-aula-2/cidade.dart';
import 'package:namer_app/rec-aula-2/estado.dart';
import 'package:namer_app/rec-aula-2/pessoa.dart';

void main() {
  print("=== Sistema de Cadastro de Pessoas ===");

  String? nome;
  String? sobrenome;
  double? peso;
  double? altura;

  try {
    print('Nome:');
    nome = stdin.readLineSync();
    if (nome == null || nome.isEmpty) {
      throw Exception('Nome não pode ser vazio');
    }

    print('Sobrenome:');
    sobrenome = stdin.readLineSync();
    if (sobrenome == null || sobrenome.isEmpty) {
      throw Exception('Sobrenome não pode ser vazio');
    }

    print('Peso (kg):');
    String? pesoStr = stdin.readLineSync();
    peso = double.tryParse(pesoStr ?? '');
    if (peso == null || peso <= 0) {
      throw Exception('Peso inválido: deve ser um número maior que zero');
    }

    print('Altura:');
    String? alturaStr = stdin.readLineSync();
    altura = double.tryParse(alturaStr ?? '');
    if (altura == null || altura <= 0) {
      throw Exception('Altura inválida: deve ser um número maior que zero');
    }

    const Estado parana = Estado(nome: "Paraná", sigla: "PR");
    const Cidade cidade = Cidade(nome: "Paranavaí", estado: parana);

    final Pessoa pessoa = Pessoa(
      nome,
      sobrenome,
      peso,
      altura,
      cidade,
      () {
        print('Função de callback executada com sucesso!');
      },
    );

    print('\n=== Dados Cadastrados ===');
    print(pessoa);

    print('\nExecutando função de callback:');
    pessoa.funcao();
  } catch (e) {
    print('Erro: $e');
  }
}
