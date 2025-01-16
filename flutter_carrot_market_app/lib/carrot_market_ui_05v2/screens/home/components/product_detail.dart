import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: TextTheme().bodyLarge,
          ),
          Text(
            '${product.address} · ${product.publishedAt}',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '${numberFormat(product.price)} 원',
            style: TextTheme().displayMedium,
          ),
          const Spacer(),

          //좋아요, 채팅 갯수
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //채팅
              (product.commentsCount == 0)
                  ? const SizedBox(width: 0)
                  : _buildIcons(
                      product.commentsCount, CupertinoIcons.chat_bubble_2),
              //찜
              const SizedBox(width: 8.0),
              Visibility(
                  // 삼항연산자의 기능을 가진 위젯이 있음
                  visible: (product.heartCount > 0),
                  child: _buildIcons(product.heartCount, CupertinoIcons.heart)),
            ],
          ),
        ],
      ),
    );
  }

  //포맷 함수 만들어보기
  //format 메소드가 기본적으로  number 값을 요구하기 때문에 형변환이 필요하다.
  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData mIcon) {
    return Row(
      children: [
        Icon(
          mIcon,
          size: 14.0,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text('$count')
      ],
    );
  }
}
