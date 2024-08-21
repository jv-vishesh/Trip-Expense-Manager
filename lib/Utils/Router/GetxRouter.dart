import 'package:flutter/material.dart';
import 'package:get/get.dart';
Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case RoutesName.loginScreen:
    //   return getPageRoutes(
    //       routeName: RoutesName.loginScreen,
    //       page: () => const LoginScreen(),
    //       settings: settings,
    //       bindings: [AuthBinding()]);
    // default:
    //   return getPageRoutes(
    //       routeName: RoutesName.loginScreen,
    //       page: () => const LoginScreen(),
    //       settings: settings,
    //       bindings: [AuthBinding()]);
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
