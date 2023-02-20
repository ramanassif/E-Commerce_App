import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class FiveDots extends StatelessWidget {
  const FiveDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width / 4.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kPrimaryColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: kLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
