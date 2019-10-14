import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        buildLogo(),
        buildArrowDown(),
      ],
    );
  }

  Widget buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: _size.height * 0.1, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildLogoImage(),
          buildLogoText(),
        ],
      ),
    );
  }

  Widget buildLogoImage() {
    return Image.asset(
      "assets/images/nubank-logo.png",
      width: _size.width * 0.12,
      color: Colors.white,
    );
  }

  Widget buildLogoText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(
        'Stel',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildArrowDown() {
    return Center(
      child: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
    );
  }
}
