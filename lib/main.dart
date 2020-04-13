import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade600,
            title: Text("Ask me anything"),
          ),
          body: MagicBallPage(),
        ),
      ),
    );

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int randomInt = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$randomInt.png'),
          onPressed: () {
            setState(() {
              randomInt = Random().nextInt(5) + 1;
            });
          }),
    );
  }
}
