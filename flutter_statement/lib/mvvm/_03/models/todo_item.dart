class TodoItem {
  String title;
  bool isDone;

  TodoItem({required this.title, this.isDone = false});
}

List<TodoItem> todoItems = [
  TodoItem(title: '플러터 공부'),
  TodoItem(title: '낮잠자기', isDone: true),
  TodoItem(title: '프로젝트'),
];
