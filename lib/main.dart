import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void motreb(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded kelid({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          motreb(noteNumber);
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
              kelid(color: Colors.red, noteNumber: 1),
              kelid(color: Colors.yellow, noteNumber: 2),
              kelid(color: Colors.orange, noteNumber: 3),
              kelid(color: Colors.lightGreenAccent, noteNumber: 4),
              kelid(color: Colors.blueAccent, noteNumber: 5),
              kelid(color: Colors.purple, noteNumber: 6),
              kelid(color: Colors.deepPurpleAccent, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
