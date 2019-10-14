import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: _size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      child: buildCreditCard(),
    );
  }

  Widget buildCreditCard() {
    Color _color = Colors.grey[500];
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.credit_card,
            color: _color,
            size: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Cartão de crédito',
              style: TextStyle(color: _color, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
