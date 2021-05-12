import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                getno();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                getno();
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }

  void getno() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }
}
