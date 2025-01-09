import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/profile_page.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //객체를 const 사용하려면 생성자가 const 생성자 이어야 한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const ProfilePage(),
    );
  }
}
