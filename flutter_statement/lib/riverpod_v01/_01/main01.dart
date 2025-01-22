import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common.utils/logger.dart';
import 'todo.dart';

void main() {
  runApp(
      //1. Riverpod을 사용하기 위해 ProviderScope로 감싼다.
      ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
} //end of myApp

//2. 위젯을  ConsumerWidget으로 만들어 주면  ProviderScope에 접근할 수 있게된다.
class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  //3. ConsumerWidget 클래스의 build 메서드는 WidgetRef를 참조할 수 있다.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //4. ref를 통해서 ProvideScope 관리하는 창고 또는 창고가 관리하는 데이터에 접근할 수 있다.

    //5. ref.read() =>창고에 직접 접근하거나, 상태값을 한번만 수신할 때 사용한다.
    final Todo firstTodo = ref.read(todoProvider);

    logger.d('$firstTodo');
    //6. ref.watch() => 상태값이 변경되는 것을 계속 수신할 때 사용한다.(구독)
    final Todo value = ref.watch(todoProvider);

    logger.d('${value.toString()}');

    //이번 예제에서는 창고 관리자(여러명중) provider라는 창고관리자를 사용했다.(1회성 데이터 제공)

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text('완료 ${firstTodo.toString()}'),
      ),
    ));
  }
}
