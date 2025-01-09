import 'package:flutter/material.dart';

class ProfileCount extends StatelessWidget {
  const ProfileCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildCountContainer(50, 'Post'),
        _buildContour(),
        _buildCountContainer(10, 'Likes'),
        _buildContour(),
        _buildCountContainer(3, 'Share'),
      ],
    );
  }

  Widget _buildCountContainer(int count, String text) {
    return Column(
      children: [
        Text(
          '${count}',
        ),
        Text('${text}'),
      ],
    );
  }

  Widget _buildContour() {
    return Container(
      width: 1,
      height: 40,
      color: Colors.blue,
    );
  }
}
