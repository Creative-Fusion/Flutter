import 'package:flutter/material.dart';
import "package:assets_audio_player/assets_audio_player.dart";
import 'package:assets_audio_player/playable.dart';
 
void main() => runApp(XylophoneApp()); //equivalent to return runApp() --single line function

final assetsAudioPlayer = AssetsAudioPlayer();

playSound(int songNumber) {
  assetsAudioPlayer.open(
    Audio("assets/note$songNumber.wav"),
  );
}

Expanded buildButton({int soundNumber, Color color}) {
  return Expanded(

    child: FlatButton(
    child: Text('Wohoo'),
    color: color,
    onPressed: () {
        playSound(soundNumber);
     },
   ),
 );
}

class XylophoneApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text(
            "Xylophone Player",
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton(soundNumber:1, color: Colors.red),
              buildButton(soundNumber:2, color: Colors.orange),
              buildButton(soundNumber:3, color: Colors.yellow),
              buildButton(soundNumber:4, color: Colors.green),
              buildButton(soundNumber:5, color: Colors.blue),
              buildButton(soundNumber:6, color: Colors.indigo),
              buildButton(soundNumber:7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class Bust extends StatelessWidget {
  const Bust({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: Colors.red[600],
        onPressed: () {
          playSound(1);
        },
      ),
    );
  }
}
