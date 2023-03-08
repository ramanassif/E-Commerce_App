import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class SizeCircle extends StatefulWidget {
  final bool isSelected;

  const SizeCircle({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<SizeCircle> createState() => _SizeCircleState();
}

class _SizeCircleState extends State<SizeCircle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isSelected ? kPrimaryColor : kLightColor,
          ),
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            '6',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
