import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';




class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.onPressed});
final IconData icon;
final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
     
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
    
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
