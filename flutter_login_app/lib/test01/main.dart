import 'package:flutter/material.dart';

//텍스트 필드와 from 위젯 만들어 보기
//테스트 코드 작업하기
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: FormPage(),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////
//변경 가능한 변수를 -> 상태가 있는 위젯이다.
///////composite 관계 ///////////////////////
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  //강한 소유의 관계
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _username = '';
  String _password = '';

  //타입추론
  //Form 상태를 추적하기 위해 관리하는 고유키를 하나 선언한다.
  //즉 이 키를 가지고 form에 상태에 접근할 수 있다.
  final _formKey = GlobalKey<FormState>();

//화면을 그리는 메서드
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '아이디를 입력하시오.';
              }
              return null;
            },
            onSaved: (newValue) {
              _username = newValue ?? '';
              print('사용자 이름 필드 onSaved 호출 $_username ');
            },
          ),
          SizedBox(
            height: 24.0,
          ),
          TextFormField(
            obscureText: true, // 비밀번호 입력 부분  * 처리
            validator: (value) {
              if (value == null || value.isEmpty) {
                //유효성을 통과하지 못했으면 텍스트 ㅊ필드 아래에 친절하게 알려줘
                return '패스워드를 입력하시오.';
              }
              return null;
            },
            onSaved: (newValue) {
              print('사용자 비밀번호 필드 onSaved 호출 ');

              _password = newValue ?? '';
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //true일 경우 들어옴

                  print('true를 반환');

                  //저장메서드 호출
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                } else {
                  //false 일경우 들어옴
                }
              },
              child: Text('Login')),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////
