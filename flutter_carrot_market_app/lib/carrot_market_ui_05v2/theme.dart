import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData mTheme() {
  return ThemeData(
    //자동세팅 -> 머테이럴3부터 적용
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),  => 구글에서 어울리는 색상을 지정해줌
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.orange,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
    appBarTheme: appBarTheme(),
  );
}

//텍스트 테마
TextTheme textTheme() {
  return TextTheme(
    //가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    //중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    //본문 텍스트 스타일(기사, 설명)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    //부제목 작은 본문텍스트
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.black),
    //중간크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

//버튼 테마

//appBar 테마
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false, // ios나, andriod 들 상관없이 적용하겠다.
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black, //앱바 제목 텍스트 색상
    ),
  );
}

//bottomnavigation Bar 테마 설정
BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange, //선택된 아이템 색상
    unselectedItemColor: Colors.black54, // 선택되지 않은 아이템 색상
    showUnselectedLabels: true, // 선택되지않은 라벨이 표시여부 설정
  );
}
