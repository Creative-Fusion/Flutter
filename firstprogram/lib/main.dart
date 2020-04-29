import 'package:flutter/material.dart';

//the main function is the starting point of all our Flutter apps.
void main(){
  runApp(
    MaterialApp( //material app confirms the material app design
      home: Scaffold( //widgets consisting of various oprions...appbar etc
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am Rich'
            )
          ),
          backgroundColor: Colors.brown[900],
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Center(
          child: Image(
            image: NetworkImage('https://www.bigstockphoto.com/images/homepage/module-6.jpg'),
          ),
        ) 
      )
    )
  );
}

