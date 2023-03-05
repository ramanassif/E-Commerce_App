import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class TwoDots extends StatelessWidget {
  const TwoDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 2,
          backgroundColor: kWhiteColor,
        ),
        SizedBox(
          height: 3,
        ),
        CircleAvatar(
          radius: 2,
          backgroundColor: kWhiteColor,
        ),
      ],
    );
  }
}
