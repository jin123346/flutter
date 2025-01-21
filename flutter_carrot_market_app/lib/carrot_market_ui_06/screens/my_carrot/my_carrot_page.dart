import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/screens/my_carrot/components/my_carrot_header.dart';

import '../../models/icon_menu.dart';
import '../components/appbar_preferred_size.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyCarrotPage() 메모리 호출 확인!!!');

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          '나의 당근',
          style: TextTheme().titleMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ))
        ],
        bottom: AppBarBottomLine(),
      ),
      body: ListView(
        children: [
          //헤더
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          //아이콘메뉴1 - 카드 레이아웃
          CardIconMenu(iconMenu1),
          const SizedBox(height: 8.0),

          //아이콘메뉴2 - 카드 레이아웃
          CardIconMenu(iconMenu2),
          const SizedBox(height: 8.0),

          CardIconMenu(iconMenu3),
        ],
      ),
    );
  }
}
