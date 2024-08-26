import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/View/Auth/IntroScreen/IntroScreen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.introScreen:
      return getPageRoutes(
          routeName: RoutesName.introScreen,
          page: () => const IntroScreen(),
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
