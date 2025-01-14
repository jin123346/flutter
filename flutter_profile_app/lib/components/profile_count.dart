import 'package:flutter/material.dart';

class ProfileCount extends StatelessWidget {
  const ProfileCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo(50, 'Post'),
        _buildLine(),
        _buildInfo(10, 'Likes'),
        _buildLine(),
        _buildInfo(3, 'Share'),
      ],
    );
  }

  Widget _buildInfo(int count, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${count}',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          '${text}',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      width: 1,
      height: 40,
      color: Colors.blue,
    );
  }
}
