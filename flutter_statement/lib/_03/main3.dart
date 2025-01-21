import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //flutter에서 material3 적용
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // 색상을 알아서 조합해줌
    ),
    home: HomeScreen(),
  ));
}
