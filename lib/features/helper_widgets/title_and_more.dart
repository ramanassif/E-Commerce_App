import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class TitleAndMore extends StatelessWidget {
  final String title;
  final String more;
  final double horizontalValue;

  const TitleAndMore({
    super.key,
    required this.title,
    required this.more,
    required this.horizontalValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalValue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: kSecondaryColor,
            ),
          ),
          Text(
            more,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
