import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone",
      home: MyXylophone(),
    );
  }
}

class MyXylophone extends StatefulWidget {
  @override
  _MyXylophoneState createState() => _MyXylophoneState();
}

class _MyXylophoneState extends State<MyXylophone> {
  final player = AudioCache();

  void playSound(int soundNumber) {
    player.play("note$soundNumber.wav");
  }

  Widget buildPlayableKey({int soundNumber, Color userColor}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: userColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildPlayableKey(soundNumber: 1, userColor: Colors.red),
            buildPlayableKey(soundNumber: 2, userColor: Colors.green),
            buildPlayableKey(soundNumber: 3, userColor: Colors.blue),
            buildPlayableKey(soundNumber: 4, userColor: Colors.orange),
            buildPlayableKey(soundNumber: 5, userColor: Colors.purple),
            buildPlayableKey(soundNumber: 6, userColor: Colors.grey),
            buildPlayableKey(soundNumber: 7, userColor: Colors.pink),
          ],
        ),
      ),
    );
  }
}
