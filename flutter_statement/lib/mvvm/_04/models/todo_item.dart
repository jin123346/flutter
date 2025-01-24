class ToDoItem {
  String title;
  bool isDone;

  ToDoItem({required this.title, this.isDone = false});

  //깊은 복사를 하기위해 만드는 메서드
  ToDoItem copyWith({String? title, bool? isDone}) {
    return ToDoItem(title: title ?? this.title, isDone: isDone ?? this.isDone);
  }
}

List<ToDoItem> todoItems = [
  ToDoItem(title: '플러터 공부'),
  ToDoItem(title: '낮잠자기', isDone: true),
  ToDoItem(title: '프로젝트'),
];
