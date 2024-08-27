import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Bindings/AccountScreenBinding.dart';
import 'package:trip_expance_manager/Bindings/ProfileScreenBinding.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/View/Auth/IntroScreen/IntroScreen.dart';
import 'package:trip_expance_manager/View/Profile/Account/AccountScreen.dart';
import 'package:trip_expance_manager/View/Profile/ProfileScreen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.introScreen:
      return getPageRoutes(
          routeName: RoutesName.introScreen,
          page: () => const IntroScreen(),
          settings: settings,
          bindings: []);
    case RoutesName.profileScreen:
      return getPageRoutes(
          routeName: RoutesName.profileScreen,
          page: () => const ProfileScreen(),
          settings: settings,
          bindings: [ProfileScreenBinding()]);
    case RoutesName.accountScreen:
      return getPageRoutes(
          routeName: RoutesName.accountScreen,
          page: () => const AccountScreen(),
          settings: settings,
          bindings: [ProfileScreenBinding(),AccountScreenBinding()]);
    default:
      return getPageRoutes(
          routeName: RoutesName.introScreen,
          page: () => const IntroScreen(),
          settings: settings,
          bindings: []);
  }
}

PageRoute getPageRoutes(
    {required String routeName,
    required Function page,
    required RouteSettings settings,
    List<Bindings>? bindings}) {
  return GetPageRoute(
      page: () => page(),
      routeName: routeName,
      settings: settings,
      bindings: bindings);
}
