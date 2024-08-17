import 'package:dice_roll/components/gradient_container.dart';
import 'package:dice_roll/components/roll_dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        colors: [
          Color.fromARGB(255, 36, 24, 145),
          Color.fromARGB(255, 33, 9, 75),
        ],
        childwidget: RollDice(),
      ),
    );
  }
}
