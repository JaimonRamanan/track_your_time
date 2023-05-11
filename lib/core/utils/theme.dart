import 'package:flutter/material.dart';

class Themes {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff4d4dff),
      secondary: Color.fromARGB(255, 77, 175, 255),
      background: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xff4d4dff),
    ),
    focusColor: Colors.black,
  );
  static ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff4d4dff),
      secondary: Color.fromARGB(255, 77, 175, 255),
      background: Colors.black12,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xff4d4dff),
    ),
    focusColor: Colors.white,
  );
}
