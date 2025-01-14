import 'package:flutter/material.dart';
import 'package:flutter_sirenorder/constants.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    print('init 내부 호출');
  }

  @override
  Widget build(BuildContext context) {
    print('1111111');
    return Column(
      children: [
        _buildTabBar(),
        Expanded(flex: 1, child: _buildTabBarView()),
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        Center(child: Text('Tab 1 Content')),
        Center(child: Text('Tab 2 Content')),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: kAccentColor,
      indicatorColor: kAccentColor,
      overlayColor: WidgetStateProperty.all(kAccentColor.withOpacity(0.1)),
      tabs: [
        Tab(
          child: Text('리스트로 주문'),
        ),
        Tab(
          child: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.map_outlined), Text('지도로 주문')],
            ),
          ),
        ),
      ],
    );
  }
}

class ListOrder extends StatelessWidget {
  const ListOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
