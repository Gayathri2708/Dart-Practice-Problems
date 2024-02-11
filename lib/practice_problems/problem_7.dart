// Let’s say you are given a list saved in a variable:

// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

executeProgram7() {
  print("Executing program 7");
  main();
}

void main() {
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
