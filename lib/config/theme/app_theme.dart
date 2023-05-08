import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.deepPurple;

  static ThemeData primary = ThemeData(
      useMaterial3: true, 
      colorSchemeSeed: primaryColor, 
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(backgroundColor: primaryColor.shade200),
      listTileTheme: const ListTileThemeData(
        iconColor: primaryColor
      ));
}
