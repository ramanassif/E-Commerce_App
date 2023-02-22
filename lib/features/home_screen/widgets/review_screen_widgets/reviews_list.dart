import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_screen/widgets/review_screen_widgets/review_item.dart';
import 'package:flutter/material.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) => ReviewItem(
            reviewValue: (index).toString(),
            index: index,
          ),
        ),
      ),
    );
  }
}
