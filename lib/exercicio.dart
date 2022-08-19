import 'dart:convert';
import 'dart:io';

// import 'dart:io';

void exercicio1() {
  stdout.write("Informe a temperatura em Fahrenheint: ");
  double temperature = double.parse(stdin.readLineSync()!);
  double resultCalc = (temperature - 32) * 5 / 9;
  print(
      "A temperatura $temperature°F em Celsius é aproximadamente: ${resultCalc.toStringAsFixed(2)}°C");
}

void exercicio2() {
  stdout.write("Digite seu nome completo: ");
  String? name = stdin.readLineSync(encoding: utf8);
  String fristName = name.toString().split(" ")[0];
  print("Seja bem vindo(a) $fristName");
}

void exercicio3() {
  stdout.write("Informe as tags do produto: ");
  String? tags = stdin.readLineSync(encoding: utf8);
  int tagQuantity = tags.toString().split(",").length;
  print("total de tags: $tagQuantity");
}

void exercicio4() {
  print("Verificador de idade.");
  stdout.write("Digite sua idade: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 18) {
    print("Você é maior de idade!");
  } else {
    print("Você é menor de idade!");
  }
}

void exercicio5() {
  stdout.write("Informe sua nota: ");
  double note = double.parse(stdin.readLineSync()!);
  note >= 7 ? print("Aprovado") : print("Reprovado");
}

void exercicio6() {
  stdout.write("Informe o valor do produto 1: ");
  double product1 = double.parse(stdin.readLineSync()!);
  stdout.write("Informe o valor do produto 2: ");
  double product2 = double.parse(stdin.readLineSync()!);

  if (product1 < product2) {
    print("R\$ ${product2.toStringAsFixed(2).replaceFirst(".", ",")}");
  } else if (product1 > product2) {
    print("R\$ ${product1.toStringAsFixed(2).replaceFirst(".", ",")}");
  } else {
    print("Os produtos tem o mesmo preço");
  }
}

void exercicio7() {
  stdout.write("Informe o nivel de glicose: ");
  double glicose = double.parse(stdin.readLineSync()!);

  if (glicose < 70) {
    print("Hipoglicemia");
  } else if (glicose >= 70 && glicose <= 110) {
    print("Normal");
  } else {
    print("Hiperglicemia");
  }
}

void exercicio8() {
  stdout.write("Informe o número do mês: ");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Março");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Maio");
      break;
    case 6:
      print("Junho");
      break;
    case 7:
      print("Julho");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Setembro");
      break;
    case 10:
      print("Outubro");
      break;
    case 11:
      print("Novembro");
      break;
    case 12:
      print("Dezembro");
      break;
    default:
      print("Mês desconhecido");
      break;
  }
}

void exercicio9() {
  stdout.write("Tem protetor solar? (s/n): ");
  String? sunscreen = stdin.readLineSync(encoding: utf8);
  stdout.write("É fim de semana? (s/n): ");
  String? weekend = stdin.readLineSync(encoding: utf8);
  stdout.write("Está chovendo? (s/n): ");
  String? raining = stdin.readLineSync(encoding: utf8);

  if (sunscreen == "s" && weekend == "s" && raining == "n") {
    print("Vamos à praia!");
  } else {
    print("Triste fim!");
  }
}

void exercicio10() {
  print("Descubra os Pares");
  stdout.write("Informe um número inteiro positivo: ");
  int number = int.parse(stdin.readLineSync()!);
  List count = [];
  for (int i = 0; i < number; i++) {
    if (i % 2 == 0) {
      count.add(i);
    }
  }
  print(count.map((e) => e.toString()).join(" "));
}

void exercicio11() {
  stdout.write("Informe o total de alunos: ");
  int totalStudents = int.parse(stdin.readLineSync()!);

  List grades = [];

  for (int i = 1; i <= totalStudents; i++) {
    stdout.write("Informe a nota do aluno $i: ");
    double grade = double.parse(stdin.readLineSync()!);
    grades.add(grade);
  }

  double sum = 0;

  grades.forEach((element) {
    sum += element;
  });

  double average = sum / totalStudents;
  print("A média da turma é: ${average.toStringAsFixed(2)}");
}

void exercicio12() {
  stdout.write("Informe um número que quer calcular o fatorial: ");
  int number = int.parse(stdin.readLineSync()!);

  List numbers = [];
  for (int i = number; i > 0; i--) {
    numbers.add(i);
  }
  String numbersString = numbers.map((e) => e.toString()).join(" x ");
  int result = numbers.reduce((value, element) => value * element);
  print("$numbersString = $result");
}

void exercicio13() {
  stdout.write("Informe a idade da pessoa: ");
  int age = int.parse(stdin.readLineSync()!);

  List ages = [];
  if (age > 0) {
    ages.add(age);
    stdout.write("Informe a idade da pessoa: ");
    age = int.parse(stdin.readLineSync()!);
  } else if (age == -1) {
    print("Encerrou");
  }
}
