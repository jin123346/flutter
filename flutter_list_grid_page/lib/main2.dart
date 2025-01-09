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
          body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('${index + 1}'),
                ),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Item sub ${index + 1}'),
                trailing: IconButton(
                    onPressed: () {
                      print('${index + 1} 버튼 눌렀다.');
                    },
                    icon: Icon(Icons.more_horiz)),
              );
            },
          ),
        ));
  }
}
