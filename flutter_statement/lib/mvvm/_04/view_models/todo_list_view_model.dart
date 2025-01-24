import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/mvvm/_02/models/todo_item.dart';

import '../models/todo_item.dart';

//viewModel
//1. 뷰 모델을 사용하고 있다.
//2. 뷰 모델에 날개를 달아주자 (riverpod 상태관리 기능추가)
//3. 우리의 규칙은 뷰 모델 - 창고에 역할도 한다.
// 4. get, set 사용하지 말자 => 과해짐 ( 어려움)
class TodoListViewModel extends Notifier<List<ToDoItem>> {
  // List<ToDoItem> _items = [];

  @override
  List<ToDoItem> build() {
    print('todoListViewModel build');
    return [];
  }

  // 0 . 가변 객체를 변경해서 사용하는 코드
  /*
   void addItem(String title) {
    _items.add(TodoItem(title: title));
  }

  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }
   */

  // 1. 불변 객체 할당
  // List<ToDoItem> get items => state;

  void addItems(String title) {
    print('title ${title}');

    state = [...state, ToDoItem(title: title)];
  }

  //상태관리를 다룰 때 불변객체 , 가변 객체란?

  //불변성 원칙 위배 (버그 위험 증가)
  // 기존 리스트의 참조를 유지한채, 리스트 안의 특정 객체의 속성을 직접 수정하는것
  // flutter 상태관리에서는 가변 댇게 대신 불변 객체를 사용한다.!!!
  //
  // void changeToggle(ToDoItem item) {
  //   state = [
  //     for (ToDoItem it in state)
  //       if (item == it)
  //         ToDoItem(
  //           title: item.title,
  //           isDone: !item.isDone,
  //         )
  //       else
  //         item
  //   ];
  // }

  //2단계 코드
  void changeToggle(ToDoItem item) {
    state = state.map((it) {
      return item == it ? it.copyWith(isDone: !it.isDone) : it;
    }).toList();
  }

  void initItem(List<ToDoItem> items) {
    state = items;
  }
}

//3. 창고관리자를 만들고 관리할 창고 연결하기
final todoListViewModelProvider =
    NotifierProvider<TodoListViewModel, List<ToDoItem>>(
  () => TodoListViewModel(),
);
