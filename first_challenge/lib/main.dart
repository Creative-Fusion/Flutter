import 'package:flutter/material.dart';

void main()=> runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Dipesh Shrestha'),
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/WinnieThePooh.png'),
        ),
      ),
    )
  )
);
