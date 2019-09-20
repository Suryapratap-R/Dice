import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      home: Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int lNumber = 1;
  int rNumber = 1;

  void _change() {
    setState(() {
      lNumber = (Random().nextInt(6) + 1);
      rNumber = (Random().nextInt(6) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$lNumber.png',
                  ),
                  onPressed: _change,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rNumber.png'),
                  onPressed: _change,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
