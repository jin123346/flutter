import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/ex01/recipe_item_list.dart';
import '/ex01/recipe_menu.dart';
import '/ex01/recipe_title.dart';

class RecipeBody extends StatelessWidget {
  const RecipeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        RecipeTitle(),
        RecipeMenu2(),
        RecipeItemList(),
      ],
    );
  }
}
