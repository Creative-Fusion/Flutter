import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText, @required this. resultInterpretation});
final String bmiResult;
final String resultText;
final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI CALCULATOR'),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
   style: resultStyle,
               ),
              
            ),
            ),
            Expanded(
            flex: 5,
              child: ReusableCard(
              
colour: bodyColor,
cardchild: Column(
 
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
  
children: <Widget>[
  
  Text(resultText.toUpperCase(),
   style: resulttext ,
   ),
 
   Text(
     bmiResult, style: resultStyle,
   ),
  
  Text(
    resultInterpretation,
   textAlign: TextAlign.center,
   
  ),
],
            ),
              ),

           ),
          Buttombutton(
            buttonTitle: 'RECALCULATE',
            onTap: (){
Navigator.pop(context);
            }

            
          ), 
        ],
      ),
    
    );
  }
}