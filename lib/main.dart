import 'package:examen_rsj/screens/home_screen_rsj.dart';
import 'package:examen_rsj/theme/app_theme_rsj.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}