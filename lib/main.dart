import 'package:flutter/material.dart';
import 'dart:math';

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
  var leftbuttonnumber = 1;
  int rightbuttonnumber = 2;

  void ChangeDiceface() {
    setState(() {
      leftbuttonnumber = Random().nextInt(6) + 1;
      rightbuttonnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  ChangeDiceface();
                },
                child: Image.asset('images/dice$leftbuttonnumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  ChangeDiceface();
                },
                child: Image.asset('images/dice$rightbuttonnumber.png')),
          ),
        ],
      ),
    );
  }
}
