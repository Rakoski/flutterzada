// Exercício 4: Criando um Funcionario com Referência Anônima
// Crie um objeto de Funcionario com uma função anônima no parâmetro calculaSalarioBonus.

import 'package:namer_app/aula04-03/classes.dart';

void main() {
  Funcionario("ice blue", "artista, jogador", 5000.00,
      calculaSalarioBonus: (String dinheiro) {
    print("muito dinheiro se ta doidoo $dinheiro");
  });
}
