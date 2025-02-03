import 'package:class_f_story/_core/constants/size.dart';
import 'package:class_f_story/data/gbm/session_gvm.dart';
import 'package:class_f_story/ui/pages/auth/join_page/join_page.dart';
import 'package:class_f_story/ui/pages/custom_logo.dart';
import 'package:class_f_story/ui/widgets/custom_auth_text_form_field.dart';
import 'package:class_f_story/ui/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../widgets/custom_elevated_button.dart';

class LoginBody extends ConsumerWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionGVM sessionGvm = ref.read(sessionProvider.notifier);

    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CustomLogo(title: 'f-story'),
          CustomAuthTextFormField(
              text: 'Username', textEditingController: _usernameController),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: 'Password',
            textEditingController: _passwordController,
            obscureText: true,
          ),
          const SizedBox(height: largeGap),
          CustomElevatedButton(
            text: '로그인',
            click: () {
              String _uid = _usernameController.text.trim();
              String _pass = _passwordController.text.trim();
              //TODO : 뷰모델에 있는 기능인 login 행위를 만들어 줄 예정  reapostiroy로 넘겨주기
              sessionGvm.login(_uid, _pass);
            },
          ),
          CustomTextButton(
              text: '회원가입 페이지로 이동',
              click: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => JoinPage()),
                );
              })
        ],
      ),
    ));
  }
}
