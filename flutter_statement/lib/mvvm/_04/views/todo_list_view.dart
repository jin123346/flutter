import 'package:flutter/material.dart';

import '../models/todo_item.dart';
import '../view_models/todo_list_view_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  final TextEditingController _titleController = TextEditingController();
  TodoListViewModel _todoListViewModel = TodoListViewModel();

  @override
  Widget build(BuildContext context) {
    print('22222');

    _todoListViewModel.initItem(todoItems);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ToDo List'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                    hintText: 'add to ToDoList ',
                    suffixIcon: IconButton(
                        onPressed: () {
                          _todoListViewModel.addItems(_titleController.text);
                        },
                        icon: Icon(Icons.add))),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _todoListViewModel.items.length,
                  itemBuilder: (context, index) {
                    final ToDoItem item = _todoListViewModel.items[index];

                    print('11111');
                    return ListTile(
                      title: Text(item.title),
                      trailing: Checkbox(
                        value: item.isDone,
                        onChanged: (value) {
                          setState(() {
                            _todoListViewModel.changeToggle(item);
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
