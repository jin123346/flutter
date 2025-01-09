//레시피 타이틀 클래스
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Text(
        'Recipes',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
