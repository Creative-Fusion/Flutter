import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
              child:Scaffold(
            backgroundColor: Colors.teal,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/shreya.jpg'),
                ),
                Text('Shreya Shrestha',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
                Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Light',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                  child: ListTile(
                    leading:Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                    title:  Text(
                        '+977 9875538767',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro-Light',
                          color: Colors.teal[900],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                  child: ListTile(
                    leading:  Icon(
                        Icons.email,
                        color: Colors.teal[900] ,
                      ),
                      title: Text(
                        'blankmindshreya@gmail.com',
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro-Light',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ) ,
                      )
                  ),
                )
              ],
            )
          ),
      ), 
    );
  }
}
