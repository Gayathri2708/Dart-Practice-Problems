// Ask the user for a number.
// Depending on whether the number is even or odd, print out an appropriate message to the user.

import 'dart:io';

executeProgram2() {
  print("Executing program 2");
  main();
}

void main() {
  stdout.write("Please enter a number");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("Entered number is even");
  } else {
    print("Entered number is odd");
  }
}
