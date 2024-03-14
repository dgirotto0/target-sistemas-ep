import 'dart:io';

void main() {
  stdout.write('Digite uma string para inverter:');
  String? originalString = stdin.readLineSync(); // lê a entrada do usuário

  String reversedString = reverseString(originalString!);

  print('A string invertida é: $reversedString');
}

String reverseString(String original) { // função que inverte os caracteres
  String result = '';
  for (int i = original.length - 1; i >= 0; i--) { // percorre a string original de trás para frente
    result += original[i];
  }
  return result;
}
