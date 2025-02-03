import 'package:class_f_story/_core/constants/size.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  //final Function(String) click;  동적 으로 받기 위해 생략
  final click;
  CustomElevatedButton({required this.text, required this.click, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white12,
            minimumSize: Size(double.infinity, 50),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        onPressed: click,
        child: Text('$text'));
  }
}
