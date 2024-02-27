import 'dart:io';

// Problem: 1
// Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.
class Programs {
  void callProgram1() {
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

// Problem: 2
// Ask the user for a number.
// Depending on whether the number is even or odd, print out an appropriate message to the user.
  void callProgram2() {
    stdout.write("Please enter a number");
    int num = int.parse(stdin.readLineSync()!);

    if (num % 2 == 0) {
      print("Entered number is even");
    } else {
      print("Entered number is odd");
    }
  }

// Problem: 3
// Take a list, say for example this one:
//   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list that are less than 5.
  void callProgram3() {
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    for (var i in a) {
      if (i < 5) {
        print(i);
      }
    }
    // 1 liner code:
    // print([for(var i in a) if(i<5) i]);
  }

// Problem: 4
// Create a program that asks the user for a number and
// then prints out a list of all the divisors of that number.
  void callProgram4() {
    stdout.write("Enter a number");
    int a = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= a; i++) {
      if (a % i == 0) {
        print(i);
      }
    }
    // 1 liner code
    // print(Set.from(a).intersection(Set.from(b)).toList());
  }

// Problem: 5
// Take two lists, for example:
//   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//   b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//  and write a program that returns a list that contains only the elements that are common between them (without duplicates).
//  Make sure your program works on two lists of different sizes.
  void callProgram5() {
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

    Set<int> aSet = Set.from(a); // or Set<int> aSet = a.toSet();
    Set<int> bSet = Set.from(b);

    Set<int> commonElements = aSet.intersection(bSet);
    print(commonElements.toList());
  }

// Problem: 6
// Ask the user for a string and print out whether this string is a palindrome or not.
  void callProgram6() {
    stdout.write("Enter the string");
    String input = stdin.readLineSync()!.toLowerCase();
    String revInput = input.split('').reversed.join('');
    input == revInput
        ? print('The String is palindrome')
        : print('The String is not palindrome');
  }

// Problem: 7
// Let’s say you are given a list saved in a variable:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
  void callProgram7() {
    List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
    List<int> b = [];
    for (var i in a) {
      if (i % 2 == 0) {
        b.add(i);
      }
    }
    print(b.toList());

    // where method to filter even elements
    // List<int> b = a.where((element) => element % 2 == 0).toList();
    // print(b);
  }
}
