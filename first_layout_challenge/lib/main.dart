import 'package:flutter/material.dart';

void main() {
  runApp(LayoutApp());
}

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.red,
                // child: Text("Hello"),
              ),
              Container(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.yellow,
                    // child: Text("Hi"),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.green[600],
                    // child: Text("Hi"),
                  )
                ],
              )),
              Container(
                width: 100,
                color: Colors.blue,
                // child: Text("Hello"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
