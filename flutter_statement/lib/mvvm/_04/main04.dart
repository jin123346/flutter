import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'views/todo_list_view.dart';

void main() {
  runApp(ProviderScope(child: ToDoApp()));
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('3333');

    return MaterialApp(
      home: ToDoListView(),
    );
  }
}
