import 'package:flutter/material.dart';
import 'package:flutter_sirenorder/constants.dart';

ThemeData mTheme() {
  return ThemeData(
      primarySwatch: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor,
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              overlayColor: WidgetStateColor.resolveWith(
                  (states) => Colors.transparent))));
}
