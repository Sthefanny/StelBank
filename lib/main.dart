import 'package:flutter/material.dart';
import 'package:stelbank/app/app_module.dart';

import 'app/configs/app_config.dart';

void main() {
  final configureApp = new AppConfig(
    appName: 'StelBank',
  );

  runApp(AppModule(appConfig: configureApp));
}
