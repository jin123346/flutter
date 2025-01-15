import 'package:flutter/material.dart';
import 'package:flutter_anb/components/home/home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [HomeBodyPopularItem()],
    );
  }
}
