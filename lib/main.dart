import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Key(1, Colors.red),
              Key(2, Colors.orange),
              Key(3, Colors.yellow),
              Key(4, Colors.green),
              Key(5, Colors.teal),
              Key(6, Colors.blue),
              Key(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class Key extends StatelessWidget {
  Key(this.sound, this.color);

  final int sound;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber: this.sound);
        },
        child: Container(
          color: this.color,
          height: 40.0,
          width: 100.0,
        ),
      ),
    );
  }

  void playSound({int soundNumber = 1}) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
}
