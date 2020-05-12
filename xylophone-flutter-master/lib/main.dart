import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  XylophoneApp(),
    )
    )
    );
}

class XylophoneApp extends StatelessWidget {
  void playSound(int x){
     final player = AudioCache();
                    player.play('note$x.wav'); 
  }
  Expanded builtKey({Color color, int x}){
    return Expanded(
                   child: FlatButton(
                    onPressed: (){
                       playSound(x);
                    },
                    color: color,
                  ),
                );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                builtKey(color: Colors.red, x: 1),
                builtKey(color: Colors.orange, x: 2),
                builtKey(color: Colors.yellow, x: 3),
                builtKey(color: Colors.green, x: 4),
                builtKey(color: Colors.teal, x: 5),
                builtKey(color: Colors.blue, x: 6),
                builtKey(color: Colors.purple, x: 7),
              ]
           )  
        );
  }
}
