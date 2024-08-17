import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int selecteddice = 1;

  void rolldice() {
    setState(
      () {
        selecteddice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/dice_images/dice-$selecteddice.png',
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
          child: TextButton(
              onPressed: () => rolldice(),
              child: const Text(
                "    Roll    ",
                style: TextStyle(fontSize: 40),
              )),
        )
      ],
    );
  }
}
