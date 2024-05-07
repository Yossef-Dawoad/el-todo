import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: const TextTheme(
        //headline1
        displayLarge: TextStyle(
          color: Colors.black,
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
        //subtitle1
        titleMedium: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        // headline2
        displayMedium: TextStyle(color: Colors.white, fontSize: 21),
        // headline3
        displaySmall: TextStyle(
          color: Color.fromARGB(255, 234, 234, 234),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        //headline4
        headlineMedium: TextStyle(color: Colors.grey, fontSize: 17),
        //headline5
        headlineSmall: TextStyle(color: Colors.grey, fontSize: 16),
        //subtitle2
        titleSmall: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        //headline6
        titleLarge: TextStyle(
            fontSize: 40, color: Colors.black, fontWeight: FontWeight.w300),
      ),
    );
  }
}
