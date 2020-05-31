import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
///If we want something to happen the moment that our stateful widget is created and added into the tree, then we're going to put our code inside initState.
  @override
  void initState() {
    super.initState();
    print('initState called.');
  }
  
  @override
  void deactivate() {
    ///If we want sth to happen when our stateful widget gets destroyed, then we would put the code inside the deactivate method.
    super.deactivate();
    print('deactivate called.');
  }

  @override
  Widget build(BuildContext context) {

    ///If we want sth to happen every single time our stateful widget gets rebuilt, then we'll put it into the build method.
    print('build called.');
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go Back To Screen 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
