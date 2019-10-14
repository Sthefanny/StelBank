import 'package:flutter/material.dart';
import 'package:stelbank/app/pages/home/home_module.dart';

class PageRoutes {
  static const String initialRoute = '/';
  static const String homeRoute = '/home';

  static String lastPage;

  static Route routes(RouteSettings settings) {
    if (handleFirstRoutesDuplicated(settings.name)) {
      lastPage = settings.name;

      Map<String, dynamic> argumentsMap = settings.arguments is Map<String, dynamic> ? settings.arguments : Map();

      switch (settings.name) {
        case PageRoutes.homeRoute:
        default:
          return MaterialPageRoute(builder: (_) => HomeModule());
      }
    }
  }

  static bool handleFirstRoutesDuplicated(String routeName) {
    return !(routeName == lastPage && (routeName == PageRoutes.initialRoute || routeName == PageRoutes.homeRoute));
  }
}
