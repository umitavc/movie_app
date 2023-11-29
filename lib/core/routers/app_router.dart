


import 'package:auto_route/auto_route.dart';
import 'package:movie_app/features/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:movie_app/features/home_screen/home_screen.dart';
import 'package:movie_app/features/home_screen/top_rated_movie_see_all.dart';
import 'package:movie_app/features/home_screen/upcoming_movies_see_all_screen.dart';


part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      

    AutoRoute(page: BottomNavigatorBarRoute.page, initial: true),     
    AutoRoute(page: HomeRoute.page,),
    AutoRoute(page: RatedSeeAllRoute.page),
    AutoRoute(page: UpcomingMoviesRoute.page),
         
    
   ];  
 }