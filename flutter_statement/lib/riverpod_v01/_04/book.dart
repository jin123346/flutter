import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/riverpod_v01/_03/book.dart';

//1. 창고에 넣을 테이터 선언
String myBook = '홍길동전';
List<String> books = [];

class MyBookStore extends Notifier<List<String>> {
  //riverpod2.x 버전 새로 생긴 함수

  @override
  List<String> build() {
    //초기값을 셋팅을한다 => 상태관리 -> 초기값이 있어야 함
    books.add(myBook);
    return books;
  }

  //이미 state가 super.state = mybook 셋팅된거임
// 내부 변수에 state 변수 사용가능

// 창고안의 메서드도 사용가능함

  void updateData(String book) {
    state = [...state, book];
  }
}

//3.  창고 관리자에게 창고를 등록하고 관리하도록 설정함

final MyBookStoreProvider = NotifierProvider<MyBookStore, List<String>>(
  () {
    return MyBookStore();
  },
);
