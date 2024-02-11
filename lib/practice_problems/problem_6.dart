// Ask the user for a string and print out whether this string is a palindrome or not.
import 'dart:io';

executeProgram6() {
  print("Executing program 6");
  main();
}

void main() {
  stdout.write("Enter the string");
  String input = stdin.readLineSync()!.toLowerCase();
  String revInput = input.split('').reversed.join('');
  input == revInput
      ? print('The String is palindrome')
      : print('The String is not palindrome');
}
