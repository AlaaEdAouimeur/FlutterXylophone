import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int x) {
    AudioCache player = AudioCache();
    player.play('note$x.wav');
  }
Expanded Key ( Color Color, int x ){
      return Expanded(
                child: FlatButton(
                  color: Color,
                  onPressed: () {
                    PlaySound(x);
                  },
                ),
              );
}
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
                children: <Widget>[
                  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Key(Colors.red, 1),
                  Key(Colors.orange, 2),
                   Key(Colors.yellow, 3),
                    Key(Colors.green, 4),
                     Key(Colors.teal, 5),
                      Key(Colors.blueAccent, 6),
                       Key(Colors.purple, 7),
               
                   
                ],
              ),
              RotatedBox(
                child: Text('Xylophone',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 20,
                  backgroundColor: Colors.white30
                ),
                ),
                quarterTurns: 1,
              
              )
                ],
                alignment: AlignmentDirectional.centerEnd,
            ),
          ),
        ),
      ),
    );
  }
}
