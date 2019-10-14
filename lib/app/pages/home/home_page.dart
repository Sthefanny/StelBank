import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stelbank/app/configs/colors_config.dart';
import 'package:stelbank/app/pages/home/widgets/top.dart';

import 'widgets/body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorsConfig _colors = ColorsConfig();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: _colors.primary));

    return Scaffold(
      backgroundColor: _colors.primary,
      body: Column(
        children: <Widget>[
          HomeTop(),
          HomeBody(),
        ],
      ),
    );
  }
}
