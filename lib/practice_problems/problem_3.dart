// Take a list, say for example this one:

//   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list that are less than 5.
executeProgram3() {
  print("Executing program 3");
  main();
}

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var i in a) {
    if (i < 5) {
      print(i);
    }
  }
  // 1 liner code:
  // print([for(var i in a) if(i<5) i]);
}