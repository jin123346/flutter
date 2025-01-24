//model
// 1. 우리가 관리하고 싶은 데이터 ( 창고안에 넣을 상품)
//

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
