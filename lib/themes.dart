import 'package:flutter/material.dart';

class ThemeClass {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black
    ),
    colorScheme: ColorScheme.light(
      surface: Colors.yellow.shade100,
      primary: Colors.yellow.shade300,
      secondary: Colors.black,
      onSecondary: Colors.black,
    ),
    fontFamily: 'Montserrat'
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white
    ),
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade700,
      primary: Colors.black,
      secondary: Colors.grey.shade700,
      onSecondary: Colors.white,
    ),
  );
}