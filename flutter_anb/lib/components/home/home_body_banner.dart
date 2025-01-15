import 'package:flutter/material.dart';
import 'package:flutter_anb/size.dart';
import 'package:flutter_anb/styles.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/banner.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 250,
            ),
            child: Text(
              '이제, 여행은 가까운 곳에서',
              style: h4(mColor: Colors.white),
            ),
          ),
          SizedBox(height: gap_m),
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              '새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.',
              style: subTitle(mColor: Colors.white),
            ),
          ),
          SizedBox(height: gap_m),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {
                  print('가까운 여행지 둘러보기');
                },
                child: Text(
                  '가까운 여행지 둘러보기',
                  style: subTitle2(),
                )),
          )
        ],
      ),
    );
  }
}
