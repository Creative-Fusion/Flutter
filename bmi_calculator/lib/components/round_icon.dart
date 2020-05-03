import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//custom RoundIcon Button (from scratch)
class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData icons;

  RoundIconButton({this.onPress, this.icons});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 10.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: FaIcon(
        icons,
      ),
    );
  }
}
