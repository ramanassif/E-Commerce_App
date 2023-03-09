import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class OfferTimeContainer extends StatelessWidget {
  final String time;
  const OfferTimeContainer({
    super.key,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 41,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          time,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
