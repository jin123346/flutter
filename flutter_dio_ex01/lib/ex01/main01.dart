import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //통신 객체 생성
  Dio _dio = Dio();
  List<Comment>? _comments;
  String path = 'https://jsonplaceholder.typicode.com/comments';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Comment List')),
        ),
        body: _comments == null || _comments!.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Text('${_comments![index].id}'),
                      title: Row(
                        children: [
                          Text('${_comments![index].postId}'),
                          Spacer(),
                          Text('${_comments![index].email}'),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${_comments![index].name}'),
                          Text('${_comments![index].body}'),
                        ],
                      ));
                },
                itemCount: _comments!.length,
              ),
      ),
    );
  }

  _fetchData() async {
    try {
      Response response = await _dio.get(path);
      print('respone 데이터 : ${response.data}');

      List<dynamic> jsonList = response.data;
      List<Comment> commentList =
          jsonList.map((e) => Comment.fromJson(e)).toList();

      setState(() {
        _comments = commentList;
      });
    } catch (err) {
      print(err);
      setState(() {
        _comments = []; // 빈 리스트로 초기화
      });
    }
  }
}

class Comment {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  @override
  String toString() {
    return 'Comment{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }
}
