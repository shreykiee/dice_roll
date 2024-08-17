import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.colors, required this.childwidget});

  final List<Color> colors;
  final Widget childwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(child: childwidget),
    );
  }
}
