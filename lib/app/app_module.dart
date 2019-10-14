import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:stelbank/app/app_widget.dart';
import 'package:stelbank/app/app_bloc.dart';

import 'configs/app_config.dart';

export 'configs/app_config.dart';

class AppModule extends ModuleWidget {
  final AppConfig appConfig;

  AppModule({@required this.appConfig});
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget(config: appConfig);

  static Inject get to => Inject<AppModule>.of();
}
