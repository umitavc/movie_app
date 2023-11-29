


import 'package:auto_route/auto_route.dart';
import 'package:movie_app/features/home_screen/home_screen.dart';
import 'package:movie_app/features/home_screen/top_rated_movie_see_all.dart';


part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
        
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: RatedSeeAllRoute.page),      
    
   ];  
 }