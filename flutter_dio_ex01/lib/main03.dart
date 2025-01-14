import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //통신을 담당하는 클라이언트 객체를 가져오자
  Dio _dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchTodos();
    //객체 실행시 한번 호출하는 메서드
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  //통신을 담당하는 메서드를 만들어 보자
  _fetchTodos() async {
    String path = 'https://jsonplaceholder.typicode.com/todos/1';

    //통신을 담당하는 코드는 기본적으로 예외처리 해줘야 한다.
    try {
      Response respone = await _dio.get(path);

      print('HTTP status code  : ${respone.statusCode}');
      print('서버 측에서 전달한 데이터 : ${respone.data}');
      print('HTTP data runtimeType  : ${respone.data.runtimeType}');

      // Map 타입  -> 값 호출방법
      print('----------------------------------');
      print('데이터-> title 값 확인 :  ${respone.data['title']}');
      print('----------------------------------');
      //map 타입으로 들어온 데이터를 Todo 객체를 생성해서 상태값을 담아보시오

      Map<String, dynamic> result = respone.data;
      print('${result['title']}');

      ToDo todo1 = ToDo.fromJson(result);

      print('결과 : ${todo1.toString()}');
    } catch (err) {
      print('실행시점의 예외');
      print(err.toString());
    }
  }
}

class ToDo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  ToDo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});
  //명명된 생성자
  ToDo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return 'ToDo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
