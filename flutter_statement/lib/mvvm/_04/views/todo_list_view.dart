import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/common.utils/logger.dart';

import '../models/todo_item.dart';
import '../view_models/todo_list_view_model.dart';

class ToDoListView extends ConsumerWidget {
  const ToDoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('1111111');
    // 상태관리 -->  동기화 (공유 데이터를 여러 화면서 동일 값을 보장)
    // 의존성 관리 <-- 강한 소유 관계를 제거 가능
    TextEditingController _titleController = TextEditingController();
    final TodoListViewModel viewModel =
        ref.read(todoListViewModelProvider.notifier);
    final items = ref.watch(todoListViewModelProvider);

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
                          viewModel.addItems(_titleController.text);
                        },
                        icon: Icon(Icons.add))),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final ToDoItem item = items[index];

                    print('11111');
                    return ListTile(
                      title: Text(item.title),
                      trailing: Checkbox(
                        value: item.isDone,
                        onChanged: (value) {
                          viewModel.changeToggle(item);
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
