import 'package:el_todo/utils/theming.dart';
import 'package:flutter/material.dart';

import 'views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
