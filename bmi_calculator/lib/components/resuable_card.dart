import 'package:flutter/material.dart';

//Extracting Widgets--Custom Widget Class
class ResuableCard extends StatelessWidget {
  //final is for stless and for components that can change after compilation eg DateTime.now();

  ResuableCard(
      {this.colour,
      this.cardChild,
      this.onPress}); //@required  this.color is unnecesary

  final Color colour;
  final Widget cardChild; //custom widget
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
