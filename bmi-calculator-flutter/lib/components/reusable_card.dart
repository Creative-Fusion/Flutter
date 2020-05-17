import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardchild, this.onPress});

final Color colour;
final Widget cardchild;
final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(       
        child: cardchild,
         margin: EdgeInsets.all(15.0),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFF1D1E33),
       
       ), 
       
      
       ),
    );
 

}
}

 
 
 
 
 
 
 
  










 
