import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_text_form_field.dart';
import 'package:flutter_login_app/size.dart';

class CustomForm extends StatelessWidget {
  String _email = '';
  String _password = '';
  CustomForm({super.key});

  // 1. 글로벌 키 선언 - 폼 상태를 관리하기 위한 key 이다.
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          CustomTextFormField('E-mail', (value) {
            _email = value ?? ''; // null 병합 연산자
          }),
          const SizedBox(height: largeGap),
          CustomTextFormField('Password', (value) {
            _password = value ?? '';
          }),
          const SizedBox(height: largeGap),
          TextButton(
              onPressed: () {
                if (_fromKey.currentState!.validate()) {
                  //유효성 검사가 통과한다면, 아래 로직 호출
                  //save() 메서드를 호출해야되고
                  // 통신요청
                  //로깅 확인
                  print('validation 통과! eamil : $_email ');
                  print('validation 통과! password : $_password ');
                  Navigator.pushNamed(context, '/home');
                }
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
