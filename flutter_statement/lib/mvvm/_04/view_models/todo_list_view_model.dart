import '../models/todo_item.dart';

class TodoListViewModel {
  List<ToDoItem> _items = [];

  List<ToDoItem> get items => _items;

  void addItems(String title) {
    _items.add(ToDoItem(title: title));
  }

  void changeToggle(ToDoItem item) {
    item.isDone = !item.isDone;
  }

  void initItem(List<ToDoItem> items) {
    _items = items;
  }
}
