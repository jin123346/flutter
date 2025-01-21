import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    ));

//statelessWidget은
//상태의 변화없이 항상 동일한 UI를 그린다.
//이런 위젯은 데이터나 변수의 값이 변하지 않을때 사용합니다.

//포인트!! => 사실 상태는 변수에 할당된 값을 말한다.
//stateless 위젯을 할때 그래서 상수값으로 많이 할당함 => final
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({super.key});

  final msg = '안녕하세요 저는 상태가 없는 (고정된) 메세지 잆니다.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(msg),
    );
  }
}
