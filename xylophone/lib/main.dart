import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int audioIndex){
    final player = AudioCache();
    player.play('note$audioIndex.wav');
  }

  Expanded buildKey({Color color,int audioIndex}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(audioIndex);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,audioIndex: 1),
              buildKey(color: Colors.orange,audioIndex: 2),
              buildKey(color: Colors.yellow,audioIndex: 3),
              buildKey(color: Colors.green,audioIndex: 4),
              buildKey(color: Colors.blue,audioIndex: 5),
              buildKey(color: Colors.teal,audioIndex: 6),
              buildKey(color: Colors.purple,audioIndex: 7),
            ],
          ),
        ),
      ),
    );
  }
}