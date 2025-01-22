import 'package:flutter/material.dart';
import 'package:flutter_statement/mvvm/_02/models/todo_item.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  TextEditingController _controller = TextEditingController();

  //샘플데이터
  List<TodoItem> todoItems = [
    TodoItem(title: '플러터 공부'),
    TodoItem(title: '낮잠자기', isDone: true),
    TodoItem(title: '프로젝트'),
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: 'Enter todo item...',
                  suffixIcon: IconButton(
                      onPressed: () {
                        // 추가로직 넣을 예정
                        setState(() {
                          todoItems.add(TodoItem(title: _controller.text));
                        });

                        _controller.clear();
                      },
                      icon: Icon(Icons.add))),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final TodoItem item = todoItems[index];

                  return ListTile(
                    title: Text(item.title),
                    trailing: Checkbox(
                      value: item.isDone,
                      onChanged: (value) {
                        //item.isDone = value ?? false;
                        item.isDone = !item.isDone;
                        setState(() {});
                      },
                    ),
                  );
                },
                itemCount: todoItems.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
// class TodoListView extends StatefulWidget {
//   const TodoListView({super.key});
//
//   @override
//   State<TodoListView> createState() => _TodoListViewState();
// }
//
// class _TodoListViewState extends State<TodoListView> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [TextField(
//         decoration: InputDecoration(
//           hintText: 'Enter todo item...',
//           suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
//         ),
//       ),],
//     );
//   }
