import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../_core/constants/size.dart';
import '../../../../../data/gbm/session_gvm.dart';
import '../../../../widgets/custom_auth_text_form_field.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../../../../widgets/custom_text_button.dart';
import '../../../custom_logo.dart';
import '../../login_page/login_page.dart';

class JoinBody extends ConsumerWidget {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  JoinBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 회원 테스트를 위한 코드 설정
    _username.text = 'aaa1';
    _email.text = 'aa@naver.com';
    _password.text = '1234';

    // 뷰 모델(창고) 자체에 접근
    SessionGVM gvm = ref.read(sessionProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const CustomLogo(
            title: 'f-story',
          ),
          CustomAuthTextFormField(
            text: 'Username',
            textEditingController: _username,
          ),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: 'Email',
            textEditingController: _email,
          ),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: 'Password',
            textEditingController: _password,
            obscureText: true,
          ),
          const SizedBox(height: largeGap),
          CustomElevatedButton(
            text: '회원 가입',
            click: () {
              //사용자 입력값을 추출해서 뷰 모델에게 회원 등록 요청 코드 작성
              gvm.join(
                _username.text.trim(),
                _email.text.trim(),
                _password.text.trim(),
              );
            },
          ),
          CustomTextButton(
            text: '로그인 페이지로 이동',
            click: () {
              // 계속 스택에 쌓여서 뒤로 가기 계속 해야 함
              // Navigator.pushNamed(context, '/login');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
