import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart_app/components/shopping_cart_header.dart';
import 'package:flutter_shopping_cart_app/pages/shop_cart_page.dart';
import 'package:flutter_shopping_cart_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: ShopCartPage(),
    );
  }
} //end of Page
