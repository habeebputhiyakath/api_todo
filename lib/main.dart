import 'package:flutter/material.dart';
import 'package:todo_list/view/home.dart';
import 'package:todo_list/view/todo_add.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      home: TodoAdd(),
    );
  }
}