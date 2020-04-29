import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text(
              'My App'
            ),
          ),
          backgroundColor: Colors.brown[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/1.jpg'), //adds images from the project file
           ),
        ) 
      ),
    )
  );
}