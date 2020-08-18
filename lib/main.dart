import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
