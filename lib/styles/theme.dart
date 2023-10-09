
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

abstract class AppTheme {
  static const TextStyle titlestyle =
  TextStyle(fontSize: 24, color: Appcolor.primary,
      fontWeight: FontWeight.w400);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Appcolor.primary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0XFF027A48),
      unselectedItemColor: Colors.black54,
    ),
  );
}