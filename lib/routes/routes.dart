import 'package:flutter/material.dart';
import '../view/screens/category_01/category_01_screen.dart';
import '../view/screens/category_02/category_02_screen.dart';
import '../view/screens/category_03/category_03_screen.dart';
import '../view/screens/home/home_screen.dart';
import '../view/screens/splash/splash_screen.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return getPageRoute(const SplashScreen());

      case RoutesName.home:
        return getPageRoute(HomeScreen());

      case RoutesName.category01:
        return getPageRoute(Category01Screen());

      case RoutesName.category02:
        return getPageRoute(Category02Screen());

      case RoutesName.category03:
        return getPageRoute(Category03Screen());

      default:
        return getPageRoute(const SplashScreen());
    }
  }
}

PageRoute getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}