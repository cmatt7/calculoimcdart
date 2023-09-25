import 'dart:io';

import 'package:calculoimcdart/pessoa.dart';

String calculateIMC() {
  print("Olá, qual seu nome?");
  String nome = stdin.readLineSync()!;

  print("Seja bem-vindo, $nome. Vamos calcular seu IMC! Insira os dados solicitados abaixo. :)");
  print("$nome, quanto você pesa?");
  double peso = double.parse(stdin.readLineSync()!);

  print("Perfeito, $nome, agora para finalizarmos, qual sua altura?");
  double altura = double.parse(stdin.readLineSync()!);

  var personToBeCalculated = Pessoa(nome, peso, altura);

  print(personToBeCalculated.toString());
  print(personToBeCalculated.calculateCurrentPersonIMC());

  return personToBeCalculated.toString();
}