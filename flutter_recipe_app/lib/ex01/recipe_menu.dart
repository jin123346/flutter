import 'package:flutter/material.dart';

class RecipeMenu2 extends StatelessWidget {
  const RecipeMenu2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildRecipeMenu(Icons.food_bank, 'ALL'),
        _buildRecipeMenu(Icons.emoji_food_beverage, 'Coffee'),
        _buildRecipeMenu(Icons.fastfood, 'Burger'),
        _buildRecipeMenu(Icons.local_pizza, 'Pizza'),
      ],
    );
  }

  Widget _buildRecipeMenu(IconData mIcon, String title) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(mIcon, color: Colors.red), Text(title)],
      ),
    );
  }
}
