import 'package:flutter_riverpod/flutter_riverpod.dart';

String myBook = '흐르는 강물처럼';
List<String> books = [];

class MyBookStore extends StateNotifier<List<String>> {
  //super.state는 부모클래스의  state 변수에 등록시키는 코드임
  MyBookStore() : super([]);

  void addBooks(String myBook) {
    state = [...state, myBook];
  }
}

final myBooStoreProvider =
    StateNotifierProvider<MyBookStore, List<String>>((ref) {
  return MyBookStore();
});
