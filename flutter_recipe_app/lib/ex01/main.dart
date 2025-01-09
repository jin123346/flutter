import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe_app/ex01/recipe_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _builderAppBar(),
      body: SafeArea(child: RecipeBody()),
    );
  }

  AppBar _builderAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.red,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
