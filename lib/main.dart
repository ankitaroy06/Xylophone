import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void tune(int noteNumber) {
    final player = AudioCache();
    player.play("note$noteNumber.wav");
  }

  Expanded keyLayout({Color keyColor, int noteNumber, String noteAlpha}) {
    return Expanded(
      child: Container(
        color: keyColor,
        child: TextButton(
          onPressed: () {
            tune(noteNumber);
          },
          child: Text(
            '$noteAlpha',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                keyLayout(
                    keyColor: Colors.red[300], noteNumber: 1, noteAlpha: 'A'),
                keyLayout(
                    keyColor: Colors.orange[300],
                    noteNumber: 2,
                    noteAlpha: 'B'),
                keyLayout(
                    keyColor: Colors.yellow[300],
                    noteNumber: 3,
                    noteAlpha: 'C'),
                keyLayout(
                    keyColor: Colors.green[300], noteNumber: 4, noteAlpha: 'D'),
                keyLayout(
                    keyColor: Colors.blue[300], noteNumber: 5, noteAlpha: 'E'),
                keyLayout(
                    keyColor: Colors.indigo[300],
                    noteNumber: 6,
                    noteAlpha: 'F'),
                keyLayout(
                    keyColor: Colors.purple[300],
                    noteNumber: 7,
                    noteAlpha: 'G'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
