import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, top: 10),
      child: Text(
        'Recipes',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
