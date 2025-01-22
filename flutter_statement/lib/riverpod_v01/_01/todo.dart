import 'package:flutter_riverpod/flutter_riverpod.dart';

class Todo {
  final bool isCompeleted;
  final String description;

  Todo({required this.isCompeleted, required this.description});

  @override
  String toString() {
    return 'Todo{isCompeleted: $isCompeleted, description: $description}';
  }
}

final List<Todo> todos = [
  Todo(isCompeleted: false, description: '111'),
  Todo(isCompeleted: false, description: '222'),
  Todo(isCompeleted: true, description: '333'),
  Todo(isCompeleted: false, description: '444'),
  Todo(isCompeleted: true, description: '555'),
];

//코드를 분리해서 작성하는 습관은 좋지만 너무 많으면 과함
// 우리들의 규칙
// 모델 클래스에 프로바이더를 함께 코드를 작성해서 파일을 줄이자

//프로바이더 - 제공자
//비유 : 창고관리자(1회알바생) - 데이터 제공자
final todoProvider = Provider<Todo>(
  (ref) => Todo(isCompeleted: true, description: '상태관리 배우기'),
);
