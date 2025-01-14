import 'package:flutter/material.dart';

class ShoppingCartBody extends StatelessWidget {
  ShoppingCartBody({super.key});

  final List<Color> colorList = [
    Colors.black,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.white
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBodyNameAndPrice('Urban Soft AL 10.0', '699'),
              _buildBodyRatingAndReviews(4, 20),
              _buildBodyOption(),
              _buildBodyButtonToCart(),
            ],
          ),
        ),
      ),
    );
  } //end of build

  //1.상품의 이름과 가격을 표시
  Widget _buildBodyNameAndPrice(String name, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text('\$ ${price}'),
      ],
    );
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviews(int rate, int count) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        ...List.generate(
          5,
          (index) {
            if (index < rate) {
              return Icon(
                Icons.star,
                color: Colors.amber,
              );
            } else {
              return Icon(Icons.star_border, color: Colors.amber);
            }
          },
        ),
      ]),
      Text('review ( ${count} )')
    ]);
  }

  //3. 색상 옵션 선택
  Widget _buildBodyOption() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color Options'),
        const SizedBox(height: 20.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(colorList.length,
                (index) => _buildBodyOptionContainer(colorList[index])))
      ],
    );
  }

  //4.색상 옵션 위젯을 만드는 함수
  Widget _buildBodyOptionContainer(Color mcolor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 3,
            left: 3,
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: mcolor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //5.add to cart 버튼
  Widget _buildBodyButtonToCart() {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          minimumSize: Size(400, 60)),
      onPressed: () {},
      child: Text('Add to Cart'),
    );
  }
} //end of body
