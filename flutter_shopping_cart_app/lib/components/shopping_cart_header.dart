import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart_app/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({super.key});

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  // 1. 상태
  int selectId = 0;

  List<String> selectPic = [
    'assets/images/p1.jpeg',
    'assets/images/p2.jpeg',
    'assets/images/p3.jpeg',
    'assets/images/p4.jpeg',
  ];

  //2.상태는 행위를 통해서 변경해야한다.
  void changeSelectId(int sId) {
    setState(() {
      selectId = sId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 5 / 3,
            child: Image.asset(
              selectPic[selectId],
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHeaderSelectContainer(Icons.pedal_bike, 0),
              _buildHeaderSelectContainer(Icons.motorcycle, 1),
              _buildHeaderSelectContainer(CupertinoIcons.car, 2),
              _buildHeaderSelectContainer(CupertinoIcons.airplane, 3),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeaderSelectContainer(IconData micon, int sId) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: (selectId == sId) ? kAccentColor : kSecondaryColor,
      ),
      child: IconButton(
        onPressed: () {
          //메소드로 호출해서 사용함
          changeSelectId(sId);
        },
        icon: Icon(
          micon,
          color: Colors.black,
        ),
      ),
    );
  }
}
