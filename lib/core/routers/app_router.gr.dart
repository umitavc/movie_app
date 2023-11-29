// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    RatedSeeAllRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatedSeeAllScreen(),
      );
    },
    UpcomingMoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UpcomingMoviesScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RatedSeeAllScreen]
class RatedSeeAllRoute extends PageRouteInfo<void> {
  const RatedSeeAllRoute({List<PageRouteInfo>? children})
      : super(
          RatedSeeAllRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatedSeeAllRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpcomingMoviesScreen]
class UpcomingMoviesRoute extends PageRouteInfo<void> {
  const UpcomingMoviesRoute({List<PageRouteInfo>? children})
      : super(
          UpcomingMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpcomingMoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
