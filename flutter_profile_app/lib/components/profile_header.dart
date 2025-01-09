import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  Column _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'GetinThere',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        Text(
          '프로그래머/작가/강사',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          '데어 프로그래밍',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  SizedBox _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        //AssetIOmage는 보통 위셎은 배경으로 동작할때, 꾸밀때 많이 활용하는 위젯이다.
        backgroundImage: AssetImage('assets/images/avatar.png'),
      ),
    );
  }
}
