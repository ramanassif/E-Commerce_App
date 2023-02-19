import 'package:flutter/material.dart';

class FiveStars extends StatelessWidget {
  final Color color;
  const FiveStars({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 1,
      ),
      child: Icon(
        Icons.star,
        color: color,
        size: 16,
      ),
    );
  }
}
