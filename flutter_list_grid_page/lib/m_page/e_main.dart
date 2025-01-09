import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color _randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.0,
          title: Text('find my Personal Color'),
        ),
        body: Stack(
          children: [
            PageView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return _innerContainer(index);
              },
            ),
            Positioned(
              top: 80,
              left: 80,
              child: Image.asset('assets/images/myface.jpg'),
            ),
          ],
        ),
      )),
    );
  }

  Widget _innerContainer(int index) {
    return Container(
      color: _randomColor(),
    );

    // return Container(
    //   margin: EdgeInsets.all(30),
    //   child: Column(
    //     children: [
    //       Text('색상 1 '),
    //       Image.asset('assets/images/myface.jpg'),
    //     ],
    //   ),
    //   color: _randomColor(),
    // );
  }
}
