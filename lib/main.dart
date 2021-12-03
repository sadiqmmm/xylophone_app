import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("Xylo Phone App"),
          centerTitle: true,
        ),
        body: const XyloPhone(),
      ),
    );
  }
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  AudioCache player = AudioCache();

  void playSound(int number) {
    player.play('assets_note$number.wav');
  }

  Expanded buildKey({Color color = Colors.green, int soundNumber = 1}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color, // background
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.green, soundNumber: 1),
          buildKey(color: Colors.amber, soundNumber: 2),
          buildKey(color: Colors.blueGrey, soundNumber: 3),
          buildKey(color: Colors.pink, soundNumber: 4),
          buildKey(color: Colors.teal, soundNumber: 5),
          buildKey(color: Colors.purpleAccent, soundNumber: 6),
          buildKey(color: Colors.indigo, soundNumber: 7),
        ],
      ),
    );
  }
}
