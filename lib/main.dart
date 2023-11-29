import 'package:flutter/material.dart';
import 'package:movie_app/core/routers/app_router.dart';
import 'package:movie_app/shared/app_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: AppTheme().themeData,
      routerConfig: appRouter.config(),
      //home: const HomeScreen(),
    );
  }
}
