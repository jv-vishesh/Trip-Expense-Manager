import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/View/Auth/LogInScreen.dart';
import 'package:trip_expance_manager/View/Auth/SignUpScreen.dart';
import 'package:trip_expance_manager/View/IntroScreen/IntroScreen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.introScreen:
      return getPageRoutes(
          routeName: RoutesName.introScreen,
          page: () => const IntroScreen(),
          settings: settings,
          bindings: []);
    case RoutesName.signUpScreen:
      return getPageRoutes(
          routeName: RoutesName.signUpScreen,
          page: () => const SignUpScreen(),
          settings: settings,
          bindings: []);
    case RoutesName.loginScreen:
      return getPageRoutes(
          routeName: RoutesName.loginScreen,
          page: () => const LogInScreen(),
          settings: settings,
          bindings: []);
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
