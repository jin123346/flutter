import 'package:flutter/material.dart';

// 보통 협업 --> 디자이너랑
// 전역함수로 만들기

const MaterialColor primaryWhite = MaterialColor(0xFFFFFF, <int, Color>{
  50: Color(0xFFFAFAFA), // 아주 밝은 흰색
  100: Color(0xFFF5F5F5), // 조금 더 밝은 흰색
  200: Color(0xFFEEEEEE), // 연한 흰색
  300: Color(0xFFE0E0E0), // 약간의 회색을 띤 흰색
  400: Color(0xFFBDBDBD), // 더 회색에 가까운 흰색
  500: Color(0xFF9E9E9E), // 기본적으로 사용되는 중간 회색
  600: Color(0xFF757575), // 약간 더 짙은 회색
  700: Color(0xFF616161), // 짙은 회색
  800: Color(0xFF424242), // 어두운 회색
  900: Color(0xFF212121), // 매우 어두운 회색 (거의 검정색)
});

const MaterialColor primaryBlue = MaterialColor(0xFF2196F3, <int, Color>{
  50: Color(0xFFE3F2FD), // 매우 밝은 파란색
  100: Color(0xFFBBDEFB), // 밝은 파란색
  200: Color(0xFF90CAF9), // 연한 파란색
  300: Color(0xFF64B5F6), // 부드러운 파란색
  400: Color(0xFF42A5F5), // 기본적인 밝은 파란색
  500: Color(0xFF2196F3), // 기본 파란색 (Material Design 표준)
  600: Color(0xFF1E88E5), // 조금 더 짙은 파란색
  700: Color(0xFF1976D2), // 짙은 파란색
  800: Color(0xFF1565C0), // 더 짙은 파란색
  900: Color(0xFF0D47A1), // 매우 짙은 파란색 (어두운 톤)
});

ThemeData theme() {
  //앱 전반적인 테마(색상, 글꼴, 위젯 스타일 등)을 정의하는 클래스
  // 일괄된 디자인을 유지하기 위해 사용

  return ThemeData(
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
  );
}
