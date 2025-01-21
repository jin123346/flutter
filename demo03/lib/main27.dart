import 'package:flutter/material.dart'; // Flutter Material Design 라이브러리 임포트

void main() {
  runApp(MyApp()); // 애플리케이션 시작
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter boxShadow Example'), // 앱바 제목 설정
        ),
        body: Center(
          child: Container(
            // 박스를 만드는 Container 위젯
            width: 200, // 박스의 너비
            height: 200, // 박스의 높이
            decoration: BoxDecoration(
              color: Colors.white, // 박스의 배경색
              borderRadius: BorderRadius.circular(15), // 박스의 둥근 모서리 설정
              boxShadow: [
                // 그림자 속성 설정
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // 그림자의 색상과 투명도 설정
                  offset: Offset(5, 5), // 그림자를 오른쪽 아래로 5px 이동
                  blurRadius: 10, // 그림자의 흐림 정도 설정
                  spreadRadius: 2, // 그림자의 크기 확장
                ),
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3), // 추가 그림자 (파란색)
                  offset: Offset(-3, -3), // 왼쪽 위로 3px 이동
                  blurRadius: 5, // 흐림 정도
                  spreadRadius: 1, // 크기 확장
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
