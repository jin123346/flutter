import 'package:flutter/material.dart';
import 'package:flutter_anb/size.dart';
import 'package:flutter_anb/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAppbarLogo(),
        Spacer(),
        _buildAppBarMenu(),
      ],
    );
  }

  Widget _buildAppbarLogo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                'assets/images/logo.png',
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'RoomOfAll',
              style: h5(mColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarMenu() {
    return SizedBox(
      child: Row(
        children: [
          Text(
            '회원가입',
            style: subTitle(mColor: Colors.white),
          ),
          SizedBox(width: gap_m),
          Text(
            '로그인',
            style: subTitle(mColor: Colors.white),
          ),
          SizedBox(width: gap_m),
        ],
      ),
    );
  }
}
