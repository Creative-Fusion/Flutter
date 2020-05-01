import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Container(
             height: 100.0,
             width: 100.0,
             color: Colors.red,
             child: Text('Hello'),
              ),
SizedBox(
  width: 20.0,
  ),
                 Container(
             height: 100.0,
             width: 100.0,
             color: Colors.blue,
             child: Text('world'),
              ),


  Container(
             height: 100.0,
             width: 100.0,
             color: Colors.pink,
             child: Text('world'),
              ),



            ],
          )
        
        ),
      ),
    );
  }
}
 