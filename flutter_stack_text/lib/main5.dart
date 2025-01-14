import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            //stack위젯 안에 positioned 위젯을 사용할 수 있다.
            children: [
              Positioned(
                top: 250,
                left: 50,
                child: Container(
                  width: 300,
                  height: 300,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Stack(
                      children: [
                        Container(
                          width: 297,
                          height: 297,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              DateTime.now().toString().substring(11, 19),
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
