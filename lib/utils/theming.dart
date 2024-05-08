import 'package:el_todo/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Pallete.primaryColor,
        ));
  }
}
