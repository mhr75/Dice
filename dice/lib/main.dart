import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Random Pictures from Undergrad'),
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
  var leftDiceNumber = 2;
  var rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(8) + 1;
                  rightDiceNumber = Random().nextInt(8) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.jpg'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(8) + 1;
                  rightDiceNumber = Random().nextInt(8) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
