import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class FiveDots extends StatefulWidget {
  final int currentIndex;

  const FiveDots({
    super.key,
    required this.currentIndex,
  });

  @override
  State<FiveDots> createState() => _FiveDotsState();
}

class _FiveDotsState extends State<FiveDots> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width / 4.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 4,
              backgroundColor:
                  widget.currentIndex == 0 ? kPrimaryColor : kLightColor,
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: widget.currentIndex == 1 ? kPrimaryColor : kLightColor,
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: widget.currentIndex == 2 ? kPrimaryColor : kLightColor,
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: widget.currentIndex == 3 ? kPrimaryColor : kLightColor,
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: widget.currentIndex == 4 ? kPrimaryColor : kLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
