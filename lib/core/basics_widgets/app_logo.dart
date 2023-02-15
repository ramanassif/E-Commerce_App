import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppLogo extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;

  const AppLogo({
    Key? key,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: firstColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: Transform.rotate(
          angle: -math.pi / 4,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: secondColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: firstColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
