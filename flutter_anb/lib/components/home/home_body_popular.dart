import 'package:flutter/material.dart';
import 'package:flutter_anb/components/home/home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          '한국 속서에 직접 다녀간 게스트의 후기!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
        Row(
          children: [
            HomeBodyPopularItem(0),
            Spacer(),
            HomeBodyPopularItem(1),
            Spacer(),
            HomeBodyPopularItem(2),
          ],
        )
      ],
    );
  }
}
