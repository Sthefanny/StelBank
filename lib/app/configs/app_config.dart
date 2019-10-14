import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appName;

  AppConfig({
    @required this.appName,
  });

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
