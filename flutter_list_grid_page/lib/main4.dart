import 'package:flutter/material.dart';

// ListView와 ListTile 위젯을 살펴보자
void main() {
  runApp(MyApp());
}

class PocketMon {
  final String imagename;
  final String name;
  final int power;

  PocketMon(this.imagename, this.name, this.power);
}

class MyApp extends StatelessWidget {
  final List<PocketMon> pocketmons = [
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
    PocketMon('메타몽.jpg', '메타몽', 10),
    PocketMon('뮤츠.jpg', '뮤츠', 100),
    PocketMon('잠만보.jpg', '잠만보', 1),
    PocketMon('파이리.png', '파이리', 80),
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            return _innerContainer(
              pocketmons[index].imagename,
              pocketmons[index].name,
              pocketmons[index].power,
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }

  Widget _innerContainer(String name, String text, int power) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double parentWidth = constraints.maxWidth;
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.amber,
                width: 4,
              )),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                width: 150,
                height: 180,
                'assets/images/${name}',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 20,
              ),
              _builderNameContainer(text, power, parentWidth),
              // Text(
              //   ' ${text}',
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              // ),
              // Text('Power : ${power}'),
            ],
          )),
        );
      },
    );
  }

  Widget _builderNameContainer(String text, int power, double parentWidth) {
    return Container(
      width: parentWidth,
      color: Colors.amber,
      child: Column(children: [
        Text(
          ' ${text}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text('Power : ${power}'),
      ]),
    );
  }
}
