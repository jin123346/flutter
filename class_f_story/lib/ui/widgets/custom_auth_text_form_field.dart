import 'package:class_f_story/_core/constants/size.dart';
import 'package:flutter/material.dart';

class CustomAuthTextFormField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextEditingController textEditingController;

  const CustomAuthTextFormField(
      {required this.text,
      required this.textEditingController,
      this.obscureText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: smallGap),
        TextFormField(
          controller: textEditingController,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: 'Enter $text',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              //손가락 터치시 활성화된 디자인 설정
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 유효성 검사실패시 사용되는 디자인 설정
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              //에러가 발생 후 손가락 터치했을때 디자인 설정
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
