import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text("Dicee"),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  Random random = Random();

  void generateValue() {
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      rightDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                generateValue();
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                generateValue();
              },
            ),
          ),
        ],
      ),
    );
  }
}
