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

class DicePage extends StatelessWidget {
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
                    print("Dice 1: Hello World!");
                  },
                  child: Image.asset("images/dice1.png"),
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
                    print("Dice 2: Hello World!");
                  },
                  child: Image.asset("images/dice2.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
