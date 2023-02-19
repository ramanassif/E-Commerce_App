import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 57,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 5.0,
            color: kPrimaryColor,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
