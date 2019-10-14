import 'package:flutter/material.dart';

Widget loadingPage(BuildContext context, [bool visible = true]) {
  return Visibility(
    visible: visible,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromRGBO(0, 0, 0, 0.5),
      child: Center(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                Text('Carregando...'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
