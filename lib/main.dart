import 'package:flutter/material.dart';
import 'package:practice_dart_questions/practice_problems/problem_1.dart';
import 'package:practice_dart_questions/practice_problems/problem_2.dart';
import 'package:practice_dart_questions/practice_problems/problem_3.dart';
import 'package:practice_dart_questions/practice_problems/problem_4.dart';
import 'package:practice_dart_questions/practice_problems/problem_5.dart';
import 'package:practice_dart_questions/practice_problems/problem_6.dart';
import 'package:practice_dart_questions/practice_problems/problem_7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: problems(),
    );
  }
}

problems() {
  executeProgram1();
  executeProgram2();
  executeProgram3();
  executeProgram4();
  executeProgram5();
  executeProgram6();
  executeProgram7();
}
