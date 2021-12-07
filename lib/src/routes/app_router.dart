import 'package:auto_route/auto_route.dart';
import 'package:roomfinder/src/features/authentication/login/login.dart';
import 'package:roomfinder/src/features/splash/roomfinder_splash.dart';

//flutter packages pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: RoomFinderSplash, initial: false),
    AutoRoute(page: Login, initial: true),
  ],
)
class $AppRouter {}
