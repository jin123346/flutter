import 'package:flutter/material.dart';

// ListView와 ListTile 위젯을 살펴보자
void main() {
  runApp(MyApp());
}

class Item {
  final int count;
  final String title;
  final String content;

  Item(this.count, this.title, this.content);
}

class MyApp extends StatelessWidget {
  final List<Item> itemList = [
    Item(12, '유튜브', '바로가기1'),
    Item(23, '네이버', '바로가기2'),
    Item(54, '다음', '바로가기3'),
    Item(56, '웨이브', '바로가기4'),
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView.separated(
              itemBuilder: (itemList, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Item ${index + 1}'),
                  subtitle: Text('Item sub ${index + 1}'),
                  trailing: IconButton(
                      onPressed: () {
                        print('버튼');
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.amber,
                      )),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 10.0,
                  endIndent: 10.0,
                  color: Colors.amberAccent,
                  height: 2.0,
                  thickness: 2,
                );
              },
              itemCount: 20),
        ));
  }
}
