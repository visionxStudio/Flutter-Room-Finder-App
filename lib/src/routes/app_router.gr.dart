// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../features/authentication/login/login.dart' as _i2;
import '../features/authentication/mobile_page/mobile_page.dart' as _i3;
import '../features/authentication/otp_verification/otp_page.dart' as _i4;
import '../features/authentication/register/register_page.dart' as _i5;
import '../features/splash/roomfinder_splash.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    RoomFinderSplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RoomFinderSplash());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Login());
    },
    MobileNumberPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MobileNumberPage());
    },
    OtpPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OtpPage());
    },
    RegisterPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(RoomFinderSplashRoute.name,
            path: '/room-finder-splash'),
        _i6.RouteConfig(LoginRoute.name, path: '/'),
        _i6.RouteConfig(MobileNumberPageRoute.name,
            path: '/mobile-number-page'),
        _i6.RouteConfig(OtpPageRoute.name, path: '/otp-page'),
        _i6.RouteConfig(RegisterPageRoute.name, path: '/register-page')
      ];
}

/// generated route for [_i1.RoomFinderSplash]
class RoomFinderSplashRoute extends _i6.PageRouteInfo<void> {
  const RoomFinderSplashRoute() : super(name, path: '/room-finder-splash');

  static const String name = 'RoomFinderSplashRoute';
}

/// generated route for [_i2.Login]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.MobileNumberPage]
class MobileNumberPageRoute extends _i6.PageRouteInfo<void> {
  const MobileNumberPageRoute() : super(name, path: '/mobile-number-page');

  static const String name = 'MobileNumberPageRoute';
}

/// generated route for [_i4.OtpPage]
class OtpPageRoute extends _i6.PageRouteInfo<void> {
  const OtpPageRoute() : super(name, path: '/otp-page');

  static const String name = 'OtpPageRoute';
}

/// generated route for [_i5.RegisterPage]
class RegisterPageRoute extends _i6.PageRouteInfo<void> {
  const RegisterPageRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterPageRoute';
}
