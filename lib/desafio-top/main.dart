// estud o caso aula 2
class Funcionario {
  String cargo;
  double salario;
  void Function(String cargo, double salario) calcularBonus;

  Funcionario({required this.calcularBonus, required this.cargo, required this.salario});
}

class Departamento {
  List<Funcionario> funcionarios;

  Departamento({required this.funcionarios});
}

class Pais {
  String pais;

  Pais({required this.pais});
}

class Estado {
  String estado;
  Pais pais;

  Estado({required this.estado, required this.pais});
}

class Cidade {
  String cidade;
  Estado estado;

  Cidade({required this.cidade, required this.estado});
}

class Endereco {
  Cidade cidade;
  String rua;
  String numero;

  Endereco({required this.cidade, required this.rua, required this.numero});
}

class Empresa {
  List<Departamento> departamentos;
  Endereco endereco;

  Empresa({required this.departamentos, required this.endereco})

}

void main() {

  List<Funcionario> funcionarios = [
    Funcionario(calcularBonus: (String cargo, double salario) {
      print("oiii");
    }, cargo: "top", salario: 5000)
  ];

  List<Departamento> departamentos = [
    Departamento(funcionarios: funcionarios)
  ];

  Pais pais = new Pais(pais: "Brasil");

  Estado estado = new Estado(estado: "Paraná", pais: pais);

  Cidade cidade = new Cidade(cidade: "Paranavaí", estado: estado);

  Endereco endereco = new Endereco(cidade: cidade, rua: "rua da meia noite", numero: "2002")

  Empresa(departamentos: departamentos, endereco: endereco);
}
