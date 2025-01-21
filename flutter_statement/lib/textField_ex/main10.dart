import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditing 를 사용하여 텍스트 필드의 입력갓ㅂ을 제어
  final username = TextEditingController();
  final password = TextEditingController();
  final Scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Flexible(
          flex: 1,
          child: ListView(
            shrinkWrap: true, // 자식 컨텐츠 높이 만큼 ListView높이를 잡아준다.
            children: [
              Container(
                color: Colors.yellow,
                height: 500,
              ),
              TextFormField(
                onTap: () {
                  print('usernaem textField');
                },
                controller: username,
                decoration: InputDecoration(
                  labelText: 'UserName',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                onTap: () {
                  print('password textField');
                },
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Login')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
