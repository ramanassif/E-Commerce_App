import 'package:flutter/material.dart';

class ReviewStar extends StatelessWidget {
  final Color color;
  final double size;
  const ReviewStar({
    super.key,
    required this.color,
    required this.size,
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
        size: size,
      ),
    );
  }
}
