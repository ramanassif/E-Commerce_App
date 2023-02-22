import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class SizeCircle extends StatelessWidget {
  const SizeCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: kLightColor,),
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            '6',
            style: TextStyle(color: kSecondaryColor,fontSize: 14,),
          ),
        ),
      ),
    );
  }
}
