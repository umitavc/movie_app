import 'package:flutter/material.dart';
import 'package:movie_app/features/home_screen/home_screen.dart';
import 'package:movie_app/shared/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: AppTheme().themeData,
      home: const HomeScreen(),
    );
  }
}

