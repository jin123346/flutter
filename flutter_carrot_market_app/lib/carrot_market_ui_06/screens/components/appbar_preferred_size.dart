import 'package:flutter/material.dart';

PreferredSize AppBarBottomLine() {
  var height = 0.5; // 공통 값 지역변수로 설정
  return PreferredSize(
    preferredSize: Size.fromHeight(1),
    child: Divider(
      color: Colors.grey.withOpacity(height),
      height: height,
      thickness: height,
    ),
  );
}
