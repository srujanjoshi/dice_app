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
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  int diceRoll() {
    return Random.secure().nextInt(6) + 1;
  }

  void setDiceState() {
    setState(() {
      leftDiceNumber = diceRoll();
      rightDiceNumber = diceRoll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setDiceState();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setDiceState();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
