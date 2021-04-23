import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(
            title: Text('Ask me anything!'),
            backgroundColor: Colors.blue[900],
          ),
          body: AskAny(),
        ),
      ),
    );

class AskAny extends StatefulWidget {
  @override
  _AskAnyState createState() => _AskAnyState();
}

class _AskAnyState extends State<AskAny> {
  int number = 2;
  void changeAnswer() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          changeAnswer();
        },
        child: Image.asset('images/ball$number.png'),
      ),
    );
  }
}
