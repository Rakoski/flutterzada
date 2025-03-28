import 'dart:io';

import 'package:namer_app/aula03/pessoa.dart';

void main() {
  print("olá mundo!");

  var x1 = 10;
  var x2 = x1;
  var x3 = x2;

  var pessoa4 = "oii";
  var pessoa5 = pessoa4; // copiou o endereço de pessoa 1
  var pessoa6 = pessoa5; // se mudar o pessoa4, muda tudo

  x1 = 50;

  print('nome:');
  var nome = stdin.readLineSync();
  print('sobrenome:');
  var sobrenome = stdin.readLineSync();
  print('aula peso');
  var peso = double.parse(stdin.readLineSync()!);
  print('aula altura');
  var altura = double.parse(stdin.readLineSync()!);
  Pessoa pessoa7 =
      new Pessoa(nome.toString(), sobrenome.toString(), peso, altura);

  print('pessoa: ${pessoa7.nome} ${pessoa7.peso}');
}
