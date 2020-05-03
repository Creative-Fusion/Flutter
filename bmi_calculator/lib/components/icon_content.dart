import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String cardText;

  IconContent({this.icon, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon, size: 80),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
