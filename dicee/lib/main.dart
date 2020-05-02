import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      )
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=2;

  void changeValue(){
    setState(() { //setState() will rebuild our UI and look to see where that change has affected
      leftDiceNumber=Random().nextInt(6)+1; //nextInt(6) generates a random number from 0-5. Therefore, +1 increments to generated random number by 1 and gives a range of 1-6
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
            children: <Widget>[
              Expanded(
                // flex: 2, //The ratio of space occupancy of the widget
                child: FlatButton(
                  onPressed: (){
                    changeValue();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'), //Image.asset is a much more convenient and easy way to add image
                ),
              ),
              Expanded(
                // flex: 3,
                child: FlatButton(
                  onPressed: (){
                    changeValue();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              )
            ]
        )
    );
  }
}


