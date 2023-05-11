import 'package:flutter/material.dart';

class Themes {
  ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0x4d4dffff),
      secondary: Color(0xffffff80),
      background: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(buttonColor: Color(0xffffff80)),
  );
  ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0x4d4dffff),
      secondary: Color(0xffffff80),
      background: Colors.black12,
    ),
    buttonTheme: const ButtonThemeData(buttonColor: Color(0xffffff80)),
  );
}
