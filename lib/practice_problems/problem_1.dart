// Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

executeProgram1() {
  print("Executing program 1");
  main();
}

void main() {
  stdout.write("What's your name?");
  String? name = stdin.readLineSync();
  if (name != null) {
    print("Hey $name! What's your age?");
    String? ageInput = stdin.readLineSync();
    if (ageInput != null) {
      int age = int.parse(ageInput.toString());

      int yearsToHundred = 100 - age;
      print("$name, you have $yearsToHundred years to be 100");
    } else {
      print("Invalid age input. Please enter a valid age.");
    }
  } else {
    print("Invalid name input. Please enter a valid name.");
  }
}
