import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _builderMenuIcon(Icons.food_bank, 'All'),
        _builderMenuIcon(Icons.emoji_food_beverage, 'Coffee'),
        _builderMenuIcon(Icons.fastfood, 'Burger'),
        _builderMenuIcon(Icons.local_pizza, 'Pizza'),
      ],
    );
  }

  //메서드 만들어보기
  //container 위젯을 구며 주고 싶다면./..
  Widget _builderMenuIcon(IconData micon, String text) {
    // Container 위젯에 color 속성과 decoreate 함께 쓰면 무조건 오류
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            micon,
            color: Colors.red,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
