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
          body: Stack(
            // alignment: Alignment.bottomLeft,
            //stack위젯 안에 positioned 위젯을 사용할 수 있다.
            children: [
              Positioned(
                top: 10,
                left: 0,
                child: Container(
                  width: 400,
                  height: 400,
                  color: Colors.red,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 200,
                left: 40,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
