import 'package:flutter/material.dart';
import 'package:flutter_anb/components/home/home_body_banner.dart';
import 'package:flutter_anb/components/home/home_body_popular.dart';
import 'package:flutter_anb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double bodyWith = getBodyWidth(context);

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: bodyWith,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
