import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/helper_widgets/review_star.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String reviewValue;
  final int index;

  const ReviewItem({
    Key? key,
    required this.reviewValue,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: index == 0 ? 100 : 80,
        decoration: BoxDecoration(
          border: index == 0
              ? Border.all(
                  width: 0,
                  color: kPrimaryColor.withOpacity(0.1),
                )
              : Border.all(
                  color: kLightColor,
                ),
          borderRadius: BorderRadius.circular(5),
          color: index == 0 ? kPrimaryColor.withOpacity(0.1) : kWhiteColor,
        ),
        child: Center(
          child: index == 0
              ? const Text(
                  'All Review',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ReviewStar(color: Colors.yellow),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      reviewValue,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
