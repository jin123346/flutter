import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;
  final String content;

  RecipeListItem(this.imageName, this.title, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
        children: [
          //이미지
          AspectRatio(
            //  이미지 비율을 지정할 수 있다.
            aspectRatio: 2 / 1, // 이미지가 2:1비율로 맞춰짐
            child: ClipRRect(
              child: Image.asset(
                'assets/images/${imageName}.jpeg',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 10),
          //text1,
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          //text2
          Text(content)
        ],
      ),
    );
  }
}
