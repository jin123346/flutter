import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/riverpod_v01/_02/fruit.dart';

import '../../common.utils/logger.dart';

void main() {
  //1. riverpod 를 사용하기 위해서
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitPage(),
    );
  }
}

//2. 리버팟을 사용하기 위해서 소비자 (ConsumerWideget으로 변경해야한다.
class FruitPage extends ConsumerWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //사용하는 측 코드에서 배운 2가지
    //ref.read(...) , ref.watch(...)
    //한번만 데이터를 가져오려면 무엇을 사용해야할까?
    final String fruit = ref.watch(fruitProvider);
    final void fruitStore = ref;
    logger.d('fruit 확인 : $fruit');
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Center(
          child: Text('data 확인 : $fruit'),
        ),
        ElevatedButton(
            onPressed: () {
              FruitStore store = ref.read(fruitProvider.notifier);
              store.changeData('딸기');
            },
            child: Text('딸기 상태변경하기 ')),
      ]),
    ));
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
  - 상태를 관리(state) => 추상화 시켜서 변수의 이름으로 사용함
  - 상태를 관리하고 변경하는 메소드 까지 창고관리자 역할
  state가 변경이 되면 이를 구독중인(watch)에게 알려준다.
  ref는 창고의 state를 한번 가져올 수 있는 통로로,
  ref.read() 는 창고 자체에 접근하여 state를 가져올 수 있고,
  ref.watch()는 계속 구독하여 상태 변경을 감지할 수 있다.
  CusumerWidget 객체를 통해 ref를 사용할 수 있음
 */
