import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}

class DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  var diceOneNumber = 1;
  var diceTwoNumber = 1;
  final generator = Random();

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          diceOneNumber = generator.nextInt(6) + 1;
          diceTwoNumber = generator.nextInt(6) + 1;
        });
      },
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('images/dice$diceOneNumber.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('images/dice$diceTwoNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
