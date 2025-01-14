import 'package:flutter/material.dart';
import 'package:flutter_sirenorder/components/home_tabbar.dart';

class OrderMainBody extends StatelessWidget {
  OrderMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Expanded(child: HomeTabBar())],
    );
  }
}
