import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class Buttombutton extends StatelessWidget {
  Buttombutton({this.onTap, this.buttonTitle});
 final Function onTap;
 final String buttonTitle;
   

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
    child:Container(
      child: Center(
      child: Text(
        buttonTitle,
      style: lastContainerStyle,
      ),
      ),
      color: Color(0XFFEB1555),
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(bottom:20.0),
      height: bottomContainerHeight,
      width: double.infinity,
    
    ),
    );
  }
}
