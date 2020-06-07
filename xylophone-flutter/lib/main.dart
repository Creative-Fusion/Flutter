import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
   runApp(
     XylophoneApp(),
     );
}

class XylophoneApp extends StatelessWidget {
  void clickMe(int soundNum){
              final player = AudioCache();
              player.play('note$soundNum.wav');          
         
  }
 Expanded buildKey({Color color, int soundNum}){
     return Expanded(    
         child: FlatButton(
             color: color,
              onPressed: (){
               clickMe(soundNum);
             },
            
          
         ),
             );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
           children: <Widget>[
             buildKey(color: Colors.blue, soundNum: 2 ),
               buildKey(color: Colors.orange, soundNum: 3 ),
                 buildKey(color: Colors.grey, soundNum: 4 ),
                   buildKey(color: Colors.purple, soundNum: 6 ),
                     buildKey(color: Colors.green, soundNum: 5 ),
                   buildKey(color: Colors.red, soundNum: 27), 
            ],
              ),
        ),
      ),
    );   
}
}
