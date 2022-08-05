import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceRole());
}

class DiceRole extends StatefulWidget {
  const DiceRole({Key? key}) : super(key: key);

  //const DiceRole({Key? key}) : super(key: key);

  @override
  State<DiceRole> createState() => _DiceRoleState();
}

class _DiceRoleState extends State<DiceRole> {
  int leftDice = 1;
  int rightDice = 1;
  void dicePressed() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Dice',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    dicePressed();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    dicePressed();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
