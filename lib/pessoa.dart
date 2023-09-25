class Pessoa {
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  String getNome(String nome) {
    return _nome;
  }

  double getPeso(double peso) {
    return _peso;
  }

  double getAltura(double altura) {
    return _altura;
  }

  @override
  String toString() {
    return { "Nome": _nome, "Peso": _peso, "Altura": _altura }.toString();
  }

  String calculateCurrentPersonIMC() {
    double imc = _peso / (_altura * _altura);

    if(imc <= 16) {
      return "Magreza grave - $imc";
    } else if(imc >= 16.1 && imc <= 17) {
      return "Magreza moderada - $imc";
    } else if(imc >= 17.1 && imc <= 18.5) {
      return "Magreza leve - $imc";
    } else if(imc >= 18.6 && imc <= 25) {
      return "Saudável - $imc";
    } else if(imc >= 25.1 && imc <= 30) {
      return "Sobrepeso - $imc";
    } else if(imc >= 30.1 && imc <= 35) {
      return "Obesidade Grau I - $imc";
    } else if(imc >= 35.1 && imc <= 40) {
      return "Obesidade Grau II (severa) - $imc";
    } else if (imc >= 40.1) {
      return "Obesidade Grau III (mórbida) - $imc";
    } else {
      throw Exception("Não foi possível calcular seu IMC, talvez você inseriu seus dados de forma incorreta.");
    }
  }
}