import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonContainer('Follow', Colors.blue, Colors.white, Colors.blue),
        _buildMessageButton()
        // _buildButtonContainer(
        //     'Message', Colors.white, Colors.black, Colors.black),
      ],
    );
  }

  InkWell _buildMessageButton() {
    //InkWell 터치 이벤트( 탭, 더블 탭) 을 감지하고 시각적 피드백도 제공합니다.
    //터치 하고자 하는 영역을 감싸서 만들 수 있다.
    return InkWell(
      // 이벤트리스너들의 집합 있음
      onTap: () {
        print('버튼클릭! ~ !');
      },
      child: Container(
        width: 150,
        height: 35,
        alignment: Alignment.center,
        child: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(),
        ),
      ),
    );
  }

  Widget _buildButtonContainer(
      String text, Color bgColor, Color textColor, Color borderColor) {
    return Container(
      width: 150,
      height: 35,
      child: _buildButton(text, bgColor, textColor, borderColor),
    );
  }

  Widget _buildButton(
      String text, Color bgColor, Color textColor, Color borderColor) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: textColor,
        minimumSize: Size.zero,
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      child: Text('${text}'),
    );
  }
}
