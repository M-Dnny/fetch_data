// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'package:fetch_data/screens/home.dart' as _i1;
import 'package:fetch_data/screens/profile.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    Profile.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Profile());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(Home.name, path: '/'),
        _i3.RouteConfig(Profile.name, path: '/Profile')
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home() : super(Home.name, path: '/');

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Profile]
class Profile extends _i3.PageRouteInfo<void> {
  const Profile() : super(Profile.name, path: '/Profile');

  static const String name = 'Profile';
}
