import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/routers/app_router.dart';
import 'package:movie_app/features/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:movie_app/shared/app_theme.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBarBloc>(
          create: (_) => BottomNavBarBloc(),
        ),
        // Diğer BlocProvider'ları buraya ekleyin.
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData,
        title: 'Movie App',
        routerConfig: appRouter.config(),
      ),
    );
  }
}
