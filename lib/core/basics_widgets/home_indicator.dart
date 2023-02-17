import 'package:flutter/material.dart';

class HomeIndicator extends StatelessWidget {
  final Color color;
  const HomeIndicator({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}
