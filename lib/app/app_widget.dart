import 'package:flutter/material.dart';

import 'common/utils/page_routes.dart';
import 'configs/app_config.dart';

class AppWidget extends StatelessWidget {
  final AppConfig config;
  AppWidget({@required this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: PageRoutes.homeRoute,
      onGenerateRoute: PageRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
