import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: ParentsView()),
    );
  }
}

// 부모 클래스
class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
}

class _ParentsViewState extends State<ParentsView> {
  String displayText = '여기는 부모 위젯 변수야 ';

  void handleChildEvent() {
    setState(() {
      displayText = '자식위젯에 이벤트가 발생했어.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1, child: Center(child: Text(displayText))),
          Expanded(
              flex: 1, child: ChildA(onCallbackReceived: handleChildEvent)),
          Expanded(
              flex: 1, child: ChildB(onCallbackReceived: handleChildEvent)),
        ],
      ),
    );
  }
}

// 자식 a

class ChildA extends StatelessWidget {
  const ChildA({required this.onCallbackReceived, super.key});
  final Function onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('CHILD A 이벤트 발생');
          onCallbackReceived();
        },
        onHover: (value) {},
        child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.orange,
          child: Center(child: Text('CHILD A')),
        ),
      ),
    );
  }
}

// 자식 b

class ChildB extends StatelessWidget {
  const ChildB({required this.onCallbackReceived, super.key});
  final Function onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('CHILD B 이벤트 발생');
          onCallbackReceived();
        },
        child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.red,
          child: Center(child: Text('CHILD B')),
        ),
        onHover: (value) {},
      ),
    );
  }
}
