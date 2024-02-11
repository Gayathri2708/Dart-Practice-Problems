// Create a program that asks the user for a number and
// then prints out a list of all the divisors of that number.

import 'dart:io';

executeProgram4() {
  print("Executing program 4");
  main();
}

void main() {
  stdout.write("Enter a number");
  int a = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= a; i++) {
    if (a % i == 0) {
      print(i);
    }
  }
}
