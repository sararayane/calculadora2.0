import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindo a nossa calculadora 2.0 !!!");

  var numero1 = lerconsoledouble("Informe o primeiro numero que deseja:");

  var operacao =
      lerConsole("Informe a operação mátematica que deseja (+, -, *, /):");

  var numero2 = lerconsoledouble("Informe o segundo numero que deseja:");

  calcular(operacao, numero1, numero2);
}

void calcular(String operacao, double numero1, double numero2) {
  var resultado = 0.0;
  switch (operacao) {
    case "+":
      resultado = soma(numero1, numero2);
      break;
    case "-":
      resultado = subtracao(numero1, numero2);
      break;
    case "*":
      resultado = multiplicacao(numero1, numero2);
      break;
    case "/":
      resultado = divisao(numero1, numero2);
      break;
    default:
      print("Operação invalida !!!");
      exit(0);
  }

  print("Operação solicitada: $operacao");
  print("O resultado da conta é: $resultado");
}

double lerconsoledouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    return 0.0;
  } else {
    return numero;
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double soma(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtracao(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplicacao(double numero1, double numero2) {
  return numero1 * numero2;
}

double divisao(double numero1, double numero2) {
  if (numero2 == 0) {
    print("Não é possivel dividir por 0");
    exit(0);
  } else {
    return numero1 / numero2;
  }
}
