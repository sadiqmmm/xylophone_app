import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            player.play("note1.wav");
          },
          child: Text("play"),
        ),
      ),
    );
  }
}
