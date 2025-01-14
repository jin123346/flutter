import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 이벤트가 일어 나면 다시 화면을 그려야 한다.
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('전체 build() 메서드 호출 : 111111111111111111111111111');
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: TodayWidget(),
                ),
                // 이미지
                Expanded(
                  flex: 1,
                  child: FlutterLogo(
                    size: 300,
                    style: FlutterLogoStyle.markOnly,
                    textColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TodayWidget extends StatefulWidget {
  const TodayWidget({super.key});

  @override
  State<TodayWidget> createState() => _TodayWidgetState();
}

class _TodayWidgetState extends State<TodayWidget> {
  //현재시간 상태를 저장하는 변수
  String timeOfDay = '낮';

  @override
  Widget build(BuildContext context) {
    print('_TodayWidgetState  build() 메서드 호출 ');

    return InkWell(
      onTap: () {
        print('이벤트 리스너 등록');
        timeOfDay = (timeOfDay == '낮' ? '밤' : '낮');
        print('현재 상태 값 : ${timeOfDay}');
        // 화면을 새롭게 갱신하라고 명령해주어야 한다.
        setState(() {
          //이 메서드 실행시 build가 다시 호출됨
          print('화면 다시 그려줘 --> build() 재 호출한다.');
        });
      },
      child: Container(
        alignment: Alignment.center,
        color: (timeOfDay == '낮') ? Colors.green : Colors.black,
        child: Text(
          timeOfDay,
          style: TextStyle(
              fontSize: 25,
              color: (timeOfDay == '밤' ? Colors.white : Colors.black)),
        ),
      ),
    );
  }
}
