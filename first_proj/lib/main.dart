import 'package:flutter/material.dart';

//Basics: main(), Widget & Tree

// void main() => runApp(
//       MaterialApp(
//         home: Center(
//           child: Text("Hello World"),
//         ),
//       ),
//     );
/* Here main() runs MaterialApp and the MaterialApp will have a center widget which centers the text widget that prints 'Hello World'.*/
/*
We have created a Widget tree:
        MaterialApp-->Center-->Text
The first or the parent widget is the MaterialApp, and almost all of our flutter app starts with this as the first widget.
Inside the MaterialApp, we have a center widget which centers anything that it contains.
And we've given a text widget that says 'Hello World' to contain.
*/

//Scaffold() Widget

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey, //Changes the color of entire App
          appBar: AppBar(
            //Property of Scaffold() that allows to add a app barr
            title: Text("Dipesh Shrestha"), //Adds a title to the app bar
            backgroundColor:
                Colors.blueGrey[900], //Changes the background color
          ),
          body: Center(
            child: Image(
          //   image: NetworkImage('https://images.unsplash.com/photo-1555488205-d5e67846cf40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
          // Displays the image from the network
              image: AssetImage('images/diamond.png'), //Displays Asset image
          ), 
        ),
      ),
    ),
);