import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Keyboardshot.jpg'),
              ),
              Text(
                'Dipesh Shrestha',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize:40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ) // Draws a line to create a divider between two sections
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+9779734878237',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10,horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'ds.ed347@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal.shade900,
                    )
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}