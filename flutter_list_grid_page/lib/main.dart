import 'package:flutter/material.dart';

// ListView와 ListTile 위젯을 살펴보자
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text(
                    '1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                title: Text(
                  'item1',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text('item sub....'),
                trailing: IconButton(
                    onPressed: () => {print('버튼 눌렀다.')},
                    icon: Icon(Icons.more_horiz)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text(
                    '1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                title: Text(
                  'item1',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text('item sub....'),
                trailing: IconButton(
                    onPressed: () => {print('버튼 눌렀다.')},
                    icon: Icon(Icons.more_horiz)),
              )
            ],
          ),
        ));
  }
}
