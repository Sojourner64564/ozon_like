// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../firstScreen/first_screen.dart' as _i2;
import '../fourScreen/fourScreen.dart' as _i5;
import '../main.dart' as _i1;
import '../secondScreen/second_screen.dart' as _i3;
import '../thirdScreen/thirdScreen.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    FirstScreenRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FirstScreen(),
      );
    },
    SecondScreenRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SecondScreen(),
      );
    },
    ThirdScreenRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ThirdScreen(),
      );
    },
    FourScreenRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FourScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              FirstScreenRouter.name,
              path: 'firstScreen',
              parent: HomeRoute.name,
            ),
            _i6.RouteConfig(
              SecondScreenRouter.name,
              path: 'secondScreen',
              parent: HomeRoute.name,
            ),
            _i6.RouteConfig(
              ThirdScreenRouter.name,
              path: 'thirdScreen',
              parent: HomeRoute.name,
            ),
            _i6.RouteConfig(
              FourScreenRouter.name,
              path: 'fourScreen',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.FirstScreen]
class FirstScreenRouter extends _i6.PageRouteInfo<void> {
  const FirstScreenRouter()
      : super(
          FirstScreenRouter.name,
          path: 'firstScreen',
        );

  static const String name = 'FirstScreenRouter';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondScreenRouter extends _i6.PageRouteInfo<void> {
  const SecondScreenRouter()
      : super(
          SecondScreenRouter.name,
          path: 'secondScreen',
        );

  static const String name = 'SecondScreenRouter';
}

/// generated route for
/// [_i4.ThirdScreen]
class ThirdScreenRouter extends _i6.PageRouteInfo<void> {
  const ThirdScreenRouter()
      : super(
          ThirdScreenRouter.name,
          path: 'thirdScreen',
        );

  static const String name = 'ThirdScreenRouter';
}

/// generated route for
/// [_i5.FourScreen]
class FourScreenRouter extends _i6.PageRouteInfo<void> {
  const FourScreenRouter()
      : super(
          FourScreenRouter.name,
          path: 'fourScreen',
        );

  static const String name = 'FourScreenRouter';
}
