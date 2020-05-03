import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: klargebuttonTextStyle,
          ),
        ),
        color: kbottomcontainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomcontainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
      ),
    );
  }
}
