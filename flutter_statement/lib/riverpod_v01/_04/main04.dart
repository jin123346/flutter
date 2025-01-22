import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/riverpod_v01/_04/book.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookPage(),
    );
  }
}

class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    print('12222');
    List<String> bookStore = ref.watch(MyBookStoreProvider);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('${bookStore.toString()}'),
              ElevatedButton(
                  onPressed: () {
                    print('33333');

                    MyBookStore store = ref.read(MyBookStoreProvider.notifier);
                    store.updateData('update1');
                  },
                  child: Text('책 추가하기'))
            ],
          ),
        ),
      ),
    );
  }
}

/*
  정리
  provider => 1회 알바생
  - 데이터를 단순히 한 번 제공하는 역할, 상태가 변하지 않는 데이를 관리할 때 사용하며
  - 즉, 주로 정적인 데이터를 제공할 때 사용한다.
  - (간단한 단순 문자열, 정적 객체 등)
  -

  StateNotifierProvider(02 예제) 창고 관리자
    -riverpod 1.xxx
    - 상태를 관리(state) => 추상화 시켜서 변수의 이름으로 사용함
    - 상태를 관리하고 변경하는 메소드 까지 창고관리자 역할
    state가 변경이 되면 이를 구독중인(watch)에게 알려준다.
    ref는 창고의 state를 한번 가져올 수 있는 통로로,
    ref.read() 는 창고 자체에 접근하여 state를 가져올 수 있고,
    ref.watch()는 계속 구독하여 상태 변경을 감지할 수 있다.
    CusumerWidget 객체를 통해 ref를 사용할 수 있음


  NotifierProvider (04 예제)
   - riverpod 2.xxx
   - 상태를 관리하고 변경할 수 있는 창고 관리자 역할
   - StateNotifierProvider 개선된 버전이다.
   - build()로 생성자를 생성하지않고 초기값을 바로 셋팅하는 방식임
    provider를 내보낼때, 초기값을 넣어주지않고 , 바로 호출할 수 있음
   - state가 변경이 되면 이를 구독중인(watch)에게 알려준다.
    ref는 창고의 state를 한번 가져올 수 있는 통로로,
    ref.read() 는 창고 자체에 접근하여 state를 가져올 수 있고,
    ref.watch()는 계속 구독하여 상태 변경을 감지할 수 있다.
    CusumerWidget 객체를 통해 ref를 사용할 수 있음
    사용법은 똑같지만

 */
