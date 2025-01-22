import 'package:flutter/material.dart';

import '../models/todo_item.dart';

class TodoListViewModel {
  List<TodoItem> _items = [];

  //get
  List<TodoItem> get items => _items;

  //비즈니스 로직
  void addItem(String title) {
    _items.add(TodoItem(title: title));
  }

  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }
}
