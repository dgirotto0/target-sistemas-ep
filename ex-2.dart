import 'dart:io';

void main() {
  bool isInFibonacciSequence = false;

  do {
    stdout.write('Digite um número que você acha que pertence à sequência de Fibonacci:');
    String? numberToCheck = stdin.readLineSync(); // lê a entrada do usuário

    isInFibonacciSequence = checkFibonacci(int.parse(numberToCheck!));

    if (isInFibonacciSequence) {
      print('$numberToCheck pertence à sequência de Fibonacci.');
    } else {
      print('$numberToCheck não pertence à sequência de Fibonacci.');
    }
  } while (!isInFibonacciSequence);
}

bool checkFibonacci(int numberToCheck) { // função para verificar se o número pertence a sequência 
  int a = 0;
  int b = 1;

  while (b < numberToCheck) {
    int temp = b;
    b = a + b;
    a = temp;
  }

  return b == numberToCheck;
}