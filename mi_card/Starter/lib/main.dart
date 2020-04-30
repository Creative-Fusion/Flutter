import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

// //Single-child Layout widgets
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         body: SafeArea(   //When SafeArea() is not included, the contents inside the container is shown from the top of the screen including the bar that displays time/battery.
//           child: Container( 
//             height: 100.0,    //Defines a height to the container
//             width: 100.0,     //Defines a width to the container
//             //margin: EdgeInsets.all(20.0), //Offsets each edge by 20p
//             //margin: EdgeInsets.symmetric(vertical:50.0, horizontal:10.0), //Offsets top and bottom edges by 50p and left and right edges by 10p
//             //margin: EdgeInsets.fromLTRB(30.0, 50.0, 20.0, 10.0), //Offsets left: 30p, top: 50p, right: 20p and bottom: 10p
//             margin: EdgeInsets.only(left: 30.0), //offsets let by 30p. only() is used to offset only one side of the container.
//             padding: EdgeInsets.all(20.0),

//             //margin defines the margin of the container while padding defines the margin of the child of a container. 

//             color: Colors.white,
//             child: Text('Hello')
//           ),
//         ),
//       ),
//     );
//   }
// }


// //Multiple child Layout Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         body: SafeArea(   //When SafeArea() is not included, the contents inside the container is shown from the top of the screen including the bar that displays time/battery.
//           child: Column(
//             //mainAxisSize: MainAxisSize.min, //Column() occupies minimum space that can be occupied. When this line is excluded, Column() takes maximum vertical space possible.
//             //verticalDirection: VerticalDirection.up,  //Changes the vertical direction from bottom to top
//             //mainAxisAlignment: MainAxisAlignment.center, //Aligns the column from the vertical end of the screen. It can also be aligned at the vertical center of the screen by adding .center instead of .end
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Spreads each container with equal spaces between them.
//             //mainAxisAlignment: MainAxisAlignment.spaceBetween, //Spreads the containers with top and bottom container at their respective end and other container at the center.
//             //crossAxisAlignment: CrossAxisAlignment.end,   //Aligns the children from the end of the widest container
//             crossAxisAlignment: CrossAxisAlignment.stretch,   //Stretches every container available to the maximum possibility
            
//             children: <Widget>[   //Column() widget contains children instead of a child
//               Container( 
//                 height: 100.0,    //Defines a height to the container
//                 color: Colors.white,
//                 child: Text('Container 1'),
//               ),
//               SizedBox(
//                 height:20.0,  //SizedBox gives spaces between the containers.
//               ),
//               Container(
//                 height: 100.0,
//                 color: Colors.blue[900],
//                 child: Text('Container 2')
//               ),
//               Container(
//                 height: 100.0,
//                 color: Colors.indigo,
//                 child: Text('Container 3')
//               ),
//               // Container(
//               //   width: double.infinity,   //The width of the container is as wide as the screen will allow it to be
//               //   height: 10.0,
//               //   color: Colors.orange,
//               // ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }


// //Everything that applies to Column() widget can be applied to Row() widget as well.





//Layout CHallenge

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children:<Widget>[
                    Container(
                      color: Colors.yellow,
                      width: 100.0,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100.0,
                      height: 100.0,
                    )
                  ]
                )
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}