import 'dart:io';

void main() {
  List<Pessoa> pessoas = [];
  bool continuar = true;

  while (continuar) {
    print('SISTEMA DE CADASTRO');
    print('1. Cadastrar pessoa');
    print('2. Listar pessoas');
    print('3. Sair');
    print('Escolha uma opção: ');

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        cadastrarPessoa(pessoas);
        break;
      case '2':
        listarPessoas(pessoas);
        break;
      case '3':
        continuar = false;
        print('Encerrando o programa...');
        break;
      default:
        print('Opção inválida!');
    }
  }
}

void cadastrarPessoa(List<Pessoa> pessoas) {
  print('\n Cadastro de Pessoa ');

  print('Digite o nome:');
  String? nome = stdin.readLineSync();
  if (nome == null || nome.isEmpty) {
    print('Nome inválido!');
    return;
  }

  print('Digite a idade:');
  int idade = 0;
  try {
    String? entradaIdade = stdin.readLineSync();
    idade = int.parse(entradaIdade ?? '0');
    if (idade < 0) {
      print('Idade não pode ser negativa!');
      return;
    }
  } catch (e) {
    print('Idade inválida!');
    return;
  }

  print('Digite o peso (kg):');
  double peso = 0;
  try {
    String? entradaPeso = stdin.readLineSync();
    peso = double.parse(entradaPeso ?? '0');
    if (peso <= 0) {
      print('Peso inválido!');
      return;
    }
  } catch (e) {
    print('Peso inválido!');
    return;
  }

  Pessoa novaPessoa = Pessoa(nome, idade, peso);
  pessoas.add(novaPessoa);
  print('Pessoa cadastrada com sucesso!');
}

void listarPessoas(List<Pessoa> pessoas) {
  if (pessoas.isEmpty) {
    print('\nNenhuma pessoa cadastrada!');
    return;
  }

  print('\n Lista de Pessoas ');
  for (int i = 0; i < pessoas.length; i++) {
    print('\nPessoa ${i + 1}:');
    print('Nome: ${pessoas[i].nome}');
    print('Idade: ${pessoas[i].idade} anos');
    print('Peso: ${pessoas[i].peso} kg');
    print(
        'IMC: ${pessoas[i].imc.toStringAsFixed(2)} (${pessoas[i].classificacaoIMC})');
  }
}

class Pessoa {
  String _nome;
  int _idade;
  double _peso;
  double _altura = 1.70;

  Pessoa(this._nome, this._idade, this._peso);

  String get nome => _nome;
  int get idade => _idade;
  double get peso => _peso;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  set idade(int valor) {
    if (valor >= 0) _idade = valor;
  }

  set peso(double valor) {
    if (valor > 0) _peso = valor;
  }

  double get imc => _peso / (_altura * _altura);

  String get classificacaoIMC {
    if (imc < 18.5) return 'Abaixo do peso';
    if (imc < 25) return 'Peso normal';
    if (imc < 30) return 'Sobrepeso';
    if (imc < 35) return 'Obesidade grau 1';
    if (imc < 40) return 'Obesidade grau 2';
    return 'Obesidade grau 3';
  }
}
