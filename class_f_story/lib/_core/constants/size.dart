import 'package:flutter/material.dart';

const double smallGap = 5.0;
const double mediumGap = 10.0;
const double largeGap = 20.0;
const double xLargeGap = 100.0;

//간혹 현재 모바일 크기의 가로 , 세로 크기를 동적으로 가져와야할때
double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//응용
double getDrawerWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.6;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
