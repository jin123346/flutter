import 'package:flutter/material.dart';

//코드의 시작점
void main() {
  runApp(MyApp());
} //end of main

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Flutter을 개발할 때 맨 밑바닥부터 개발하는 것은 힘들다.
  //기본적 개발을 할 수 있도록 매우 유용한 클래스를 제공한다.
  //MaterialApp

  @override
  Widget build(BuildContext context) {
    //생성자
    //home : (라벨) <-- 선택적 명명 매개변수로 설계 되어있다.
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 페이지에 debug띠
      //div 박스와 같은 녀석
      home: StorePage(),
    );
  }
} //end of MyApp

class StorePage extends StatelessWidget {
  const StorePage({super.key});
  @override
  Widget build(BuildContext context) {
    //시각적 레이아웃 구조를 잡아주는 위젯
    return Scaffold(
      body: SafeArea(
        // 안전영역 내에 자식 위젯들을 배치하도록 도와준다.
        child: Column(
          // 위젯은 자식 또는 자식들을 속성을 가질 수 있다.
          children: [
            //자식1
            //패딩위젯이나 마진에 값을 EdgeInsets 클래로 감싸서 넣는다.
            Padding(
              padding: EdgeInsets.all(25.0),
              //Row 위젯은 자식 위젯들을 수평 방향으로 정렬해 주는 위젯이다.
              child: Row(
                children: [
                  Text("Woman",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Spacer(),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    "Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    "Bags",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
            ),
            //자식2

            Expanded(
              child: Image.asset(
                'assets/images/bag.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            //SizedBox 위젯은 고정된 크기의 빈 공간을 만들거나 자식 위젯의 크기를 제한할 때 사용한다.
            SizedBox(height: 2),
            //자식3
            Expanded(
                child:
                    Image.asset('assets/images/cloth.jpeg', fit: BoxFit.cover))
          ],
        ),
      ),
    );
  }
} //end of StorePage

class Child1 extends StatelessWidget {
  const Child1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
