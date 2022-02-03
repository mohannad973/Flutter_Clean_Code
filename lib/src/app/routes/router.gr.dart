// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/intro/intro_page.dart' as _i1;
import '../../features/main/main_page.dart' as _i3;
import '../../features/profile/presentation/widgets/profile_page.dart' as _i2;
import '../../features/schedule/presentation/widgets/schedule_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    IntroAppRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.IntroductionSlides());
    },
    ProfileAppRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ProfilePage());
    },
    MainAppRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainPage());
    },
    ScheduleAppRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SchedulePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(IntroAppRouter.name, path: '/'),
        _i5.RouteConfig(ProfileAppRouter.name, path: 'profilePage'),
        _i5.RouteConfig(MainAppRouter.name, path: 'main', children: [
          _i5.RouteConfig(ScheduleAppRouter.name,
              path: '', parent: MainAppRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.IntroductionSlides]
class IntroAppRouter extends _i5.PageRouteInfo<void> {
  const IntroAppRouter() : super(IntroAppRouter.name, path: '/');

  static const String name = 'IntroAppRouter';
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileAppRouter extends _i5.PageRouteInfo<void> {
  const ProfileAppRouter() : super(ProfileAppRouter.name, path: 'profilePage');

  static const String name = 'ProfileAppRouter';
}

/// generated route for
/// [_i3.MainPage]
class MainAppRouter extends _i5.PageRouteInfo<void> {
  const MainAppRouter({List<_i5.PageRouteInfo>? children})
      : super(MainAppRouter.name, path: 'main', initialChildren: children);

  static const String name = 'MainAppRouter';
}

/// generated route for
/// [_i4.SchedulePage]
class ScheduleAppRouter extends _i5.PageRouteInfo<void> {
  const ScheduleAppRouter() : super(ScheduleAppRouter.name, path: '');

  static const String name = 'ScheduleAppRouter';
}
