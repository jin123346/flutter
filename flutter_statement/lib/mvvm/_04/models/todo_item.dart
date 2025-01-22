class ToDoItem {
  String title;
  bool isDone;

  ToDoItem({required this.title, this.isDone = false});
}

List<ToDoItem> todoItems = [
  ToDoItem(title: '플러터 공부'),
  ToDoItem(title: '낮잠자기', isDone: true),
  ToDoItem(title: '프로젝트'),
];
