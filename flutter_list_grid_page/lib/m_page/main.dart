import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
            title: Text('Page View'),
          ),
          body: PageView(
            controller: PageController(
              initialPage: 2,
              viewportFraction: 0.5,
            ),
            children: [
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.lime,
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.deepPurpleAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
