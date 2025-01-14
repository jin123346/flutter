import 'package:flutter/material.dart';
import 'package:flutter_anb/components/home/home_body_banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBodyBanner(),
      ],
    );
  }
}
