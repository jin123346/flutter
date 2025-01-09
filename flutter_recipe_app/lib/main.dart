import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'recipe_title.dart';
import 'recipe_menu.dart';

//플러터 코드의 시작점
void main() {
  runApp(MyApp());
}
//위젯을 만들때 크게 두가지로 구분한다.
//stl : stateless widget 특징
//=> 상태 변경이 없는 위젯을 화면에 그릴때 선택한다.
//stfull : statefullwidget 특징
//=>

//상속 문법
class MyApp extends StatelessWidget {
  //생성자 - 선택적 명명 매개변수(값을 넣어도 안넣어도 되고)
  MyApp({super.key});

  // 보통 루트 위젯을 시작할때 MaterialApp을 많이 활용한다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PatuaOne'),
      debugShowCheckedModeBanner: false,
      //앱 실행시 첫 페이지를 지정할 수 있다.
      home: RecipesMainPage(),
    );
  }
}

class RecipesMainPage extends StatelessWidget {
  const RecipesMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    //시각적 레이아웃 구조를 잡아주는 위젯, app영역, body영역, bottom영역
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              //타이틀
              RecipeTitle(),
              //메뉴
              RecipeMenu(),

              //레시피 아이템
              RecipeListItem('coffee', 'Made Coffee',
                  'Have tou ever made tour own Made Coffee? Once you`ve tried a homemade Made Coffee. you`ll never go back'),
              RecipeListItem('burger', 'Made Burger',
                  'Have tou ever made tour own Made Coffee? Once you`ve tried a homemade Made Coffee. you`ll never go back'),
              RecipeListItem('pizza', 'Made Pizza',
                  'Have tou ever made tour own Made Coffee? Once you`ve tried a homemade Made Coffee. you`ll never go back'),
              //레시피 아이템
              //레시피 아이템
            ],
          ),
        ),
      ),
    );
  }

  // 메서드를 만들어보자
  AppBar _buildRecipeAppBar() {
    return AppBar(
      //title: Text('테스트'),
      backgroundColor: Colors.white,
      //아이콘 테마
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 1.0,
      shadowColor: Colors.black45,
      actions: [
        Icon(Icons.search_sharp, color: Colors.black87),
        SizedBox(width: 10),
        Icon(CupertinoIcons.heart, color: Colors.red),
        SizedBox(width: 15),
      ],
      // bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(4.0),
      //     child: Container(
      //       color: Colors.black,
      //       height: 1.0,
      //     )),
      // shape: Border(
      //     bottom: BorderSide(
      //   color: Colors.grey,
      // )),
    );
  }
}
