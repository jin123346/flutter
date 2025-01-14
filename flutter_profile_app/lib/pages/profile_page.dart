import 'package:flutter/material.dart';
import '/components/profile_button.dart';
import '/components/profile_tabbar.dart';
import 'package:flutter_profile_app/theme.dart';
import '/components/profile_count.dart';
import '/components/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        endDrawer: Container(
          width: 200,
          //height: double.infinity, => 가능한 최대로 확장함
          color: Colors.blue[50],
        ),
        body: Column(
          children: [
            //공백 추가
            const SizedBox(height: 20),
            //profileheader
            ProfileHeader(),
            //공백
            const SizedBox(height: 20),
            //프로필 카운트 정보
            ProfileCount(),
            // 공백
            const SizedBox(height: 20),
            //프로필 버튼2개
            ProfileButton(),

            //탭바 영역
            Expanded(child: ProfileTabBar()),
          ],
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.white,
      // elevation: 1.0,
      leading: const Icon(
        Icons.keyboard_arrow_left,
        size: 25,
      ),
      title: const Text(
        'Profile',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      shape: Border(bottom: BorderSide(color: primaryWhite.shade400)),
    );
  }
}
