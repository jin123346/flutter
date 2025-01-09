import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SearchBar(
                  trailing: [
                    IconButton(
                        onPressed: () {
                          print('Use Voice Command');
                        },
                        icon: const Icon(Icons.keyboard_arrow_down)),
                  ],
                  hintText: '매장명을 입력하세요',
                  leading: Icon(Icons.search),
                  constraints: BoxConstraints(maxWidth: 300),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CurrentLocation(),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '현재위치',
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
