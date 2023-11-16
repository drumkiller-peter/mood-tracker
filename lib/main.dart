import 'package:flutter/material.dart';
import 'package:mood_app/constants/app_colors.dart';
import 'package:mood_app/view/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
      ),
      home: const MyHomePage(),
    );
  }
}
