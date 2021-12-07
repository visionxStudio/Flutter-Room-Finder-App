// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../features/authentication/login/login.dart' as _i2;
import '../features/splash/roomfinder_splash.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RoomFinderSplashRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RoomFinderSplash());
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Login());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(RoomFinderSplashRoute.name,
            path: '/room-finder-splash'),
        _i3.RouteConfig(LoginRoute.name, path: '/')
      ];
}

/// generated route for [_i1.RoomFinderSplash]
class RoomFinderSplashRoute extends _i3.PageRouteInfo<void> {
  const RoomFinderSplashRoute() : super(name, path: '/room-finder-splash');

  static const String name = 'RoomFinderSplashRoute';
}

/// generated route for [_i2.Login]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/');

  static const String name = 'LoginRoute';
}
