import 'package:flutter/material.dart';
import 'package:flutter_profile_app/theme.dart';
// 상태가 있는 위젯을 만들어 보자
//1. StateFulWidget 위젯을 상속 받았다.
// 두개의 클래스가 한 묶음이다.

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

//컴포지션 관계
class _ProfileTabBarState extends State<ProfileTabBar>
    with SingleTickerProviderStateMixin {
  // 멤버변수
  //Tab controller는 TabBar와 TabBarView를 동기화 하는 컨트롤러 입니다.
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    print('profileTab 내부 클래스 init 호출');

    //length는 탭의 개수를 의미한다.
    // vsync 는 자연스러운 애니메이션 전환을 위해서 TickerProvider 를
    // 지원한다.
    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서드는 기본적으로 그림을 그릴때 호출이 된다.
  @override
  Widget build(BuildContext context) {
    //지역변수
    print('11111111');

    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          padding: EdgeInsets.all(5.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: 40,
          itemBuilder: (context, index) {
            return Image.network(
              'https://picsum.photos/id/${index}/200/200',
              height: 200,
              width: 150,
            );
          },
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                'https://picsum.photos/id/${index}/100/100',
              ),
              title: Text('Id  ${index}'),
              subtitle: Text('sub name ${index}'),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_rounded)),
            );
          },
          itemCount: 25,
        ),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      labelColor: Colors.blue,
      indicatorColor: Colors.blue,
      overlayColor: WidgetStateProperty.all(Colors.blue.withOpacity(0.1)),
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.dark_mode)),
        Tab(icon: Icon(Icons.sunny)),
      ],
    );
  }
}

// 코드 형태
//
