import 'package:flutter/material.dart';

import 'views/todo_list_view.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('ToDo List'),
        ),
        body: TodoListView(),
      )),
    );
  }
}
