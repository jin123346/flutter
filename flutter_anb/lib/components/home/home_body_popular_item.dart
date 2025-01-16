import 'package:flutter/material.dart';
import 'package:flutter_anb/constanats.dart';
import 'package:flutter_anb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = getBodyWidth(context) / 2 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_m),
      child: Container(
          constraints: BoxConstraints(maxWidth: 320),
          child: Column(
            children: [
              _buildPopularImage(id),
            ],
          )),
    );
  }

  _buildPopularImage(int id) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/${popularList[id]}',
            fit: BoxFit.cover,
            height: 320,
          ),
        ),
        const SizedBox(height: 5),
        _buildPopularItemStar(5),
      ],
    );
  }

  _buildPopularItemStar(int star) {
    return Row(
      children: [
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
      ],
    );
  }
}
