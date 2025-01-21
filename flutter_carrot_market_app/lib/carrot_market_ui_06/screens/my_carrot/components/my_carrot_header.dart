import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_01/theme.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/screens/components/image_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            //프로필
            _buildProfileRow(),
            //프로필 보기 버튼
            const SizedBox(height: 30),

            _buildProfileButton(),
            const SizedBox(height: 30),

            //라운드 텍스트 버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _builderRoundTextButton(FontAwesomeIcons.receipt, '판매내역'),
                _builderRoundTextButton(FontAwesomeIcons.bagShopping, '구매내역'),
                _builderRoundTextButton(FontAwesomeIcons.heart, '관심목록'),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/id/870/200/100?grayscale',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[50],
                ),
                child: Icon(
                  CupertinoIcons.camera,
                  size: 13,
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '지니지니',
              style: textTheme().displayMedium,
            ),
            const SizedBox(height: 12),
            Text('좌동  #000912', style: textTheme().displaySmall)
          ],
        ),
      ],
    );
  } //end of buildProfileRow

  _buildProfileButton() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD4D5DD), width: 1.0),
          borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: Text(
          '프로필 보기',
          style: TextTheme().titleMedium,
        ),
      ),
    );
  } //end of profileButton

  _builderRoundTextButton(IconData mIon, String text) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color.fromRGBO(255, 110, 0, 0.2),
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey.withOpacity(0.5),
                )),
            child: Icon(
              mIon,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            text,
            style: textTheme().titleMedium,
          )
        ],
      ),
    );
  }
} //end of page
