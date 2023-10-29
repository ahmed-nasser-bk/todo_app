import 'package:flutter/material.dart';

class ThemeClass {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow,
    ),
    colorScheme: ColorScheme.light(
      background: Colors.yellow.shade100,
      primary: Colors.yellow,
      secondary: Colors.black,
      onSecondary: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white
    ),
    colorScheme: ColorScheme.dark(
      background: Colors.grey.shade700,
      primary: Colors.black,
      secondary: Colors.grey.shade700,
      onSecondary: Colors.white,
    ),
  );
}