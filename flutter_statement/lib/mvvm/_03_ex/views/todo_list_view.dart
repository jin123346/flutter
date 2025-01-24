import 'package:flutter/material.dart';

import '../models/todo_item.dart';
import '../view_models/todo_list_view_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  TextEditingController _controller = TextEditingController();

  TodoListViewModel _listViewModel = TodoListViewModel();

  //샘플데이터

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
                          //todoItems.add(TodoItem(title: _controller.text));
                          _listViewModel.addItem(_controller.text);
                        });

                        _controller.clear();
                      },
                      icon: Icon(Icons.add))),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final TodoItem item = _listViewModel.items[index];

                  return ListTile(
                    title: Text(item.title),
                    trailing: Checkbox(
                      value: item.isDone,
                      onChanged: (value) {
                        //item.isDone = value ?? false;
                        _listViewModel.toggleItem(item);
                        setState(() {});
                      },
                    ),
                  );
                },
                itemCount: _listViewModel.items.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
