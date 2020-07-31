import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.deepPurple,
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
  int left = 1;
  int right=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: <Widget>[
          Expanded(
            child: FlatButton(

              onPressed: () {
                setState(() {
                  left = Random().nextInt(6)+1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/dice$left.png'),
                  SizedBox(width: 20.0),
                  Text('Player 1',style: TextStyle(fontSize: 15.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  right = Random().nextInt(6)+1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/dice$right.png'),
                  SizedBox(width: 20.0),
                  Text('Player 2',style: TextStyle(fontSize: 15.0)),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
