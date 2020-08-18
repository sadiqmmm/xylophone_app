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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.red,
              onPressed: () {
                playSound(1);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.orange,
              onPressed: () {
                playSound(2);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.yellow,
              onPressed: () {
                playSound(3);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.green,
              onPressed: () {
                playSound(4);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.greenAccent,
              onPressed: () {
                playSound(5);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.blue,
              onPressed: () {
                playSound(6);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: null,
              color: Colors.purple,
              onPressed: () {
                playSound(7);
              },
            ),
          ),
        ],
      ),
    );
  }
}
