import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/helper_widgets/review_star.dart';
import 'package:flutter/material.dart';

class PersonReview extends StatelessWidget {
  final String personName;
  final String personImage;

  const PersonReview({
    Key? key,
    required this.personName,
    required this.personImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(personImage),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  personName,
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: kLightColor),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
