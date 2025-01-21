import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidget(),
  ));
}

//포인트! ->  사실 상태는 변수에 할당된 값이다.
//'상태가 있다' 라는 말은 값이 변화할 수 있는 가능성을 이야기한다.
//외부에서 보이는 부분
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({super.key});

  //변수 --- 고정 ---> 상수
  final msg = '저는 stateful 위젯입니다.';

  //여기가 호출되고 => 아래의 private class를 보이게 된다.
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  //변수에 할당된 값이 상수가 아니기 때문에 언제든지 변경이 가능하다.
  //즉 , 여기를 상태 변수라고 부른다.
  int count = 0;

  void countAdd() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              countAdd();
            },
            child: Text('${widget.msg} onTap Count : ${count}')),
      ),
    ));
  }
}
