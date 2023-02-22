import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_screen/widgets/helper_widgets/review_star.dart';
import 'package:flutter/material.dart';

class FavoriteProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String newPrice;
  final String oldPrice;
  final String offerPercentValue;

  const FavoriteProductItem({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.newPrice,
    required this.oldPrice,
    required this.offerPercentValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 480,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: kLightColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              productImage,
              width: 133,
              height: 133,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 100,
              child: Text(
                productName,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: const [
                ReviewStar(color: Colors.yellow),
                ReviewStar(color: Colors.yellow),
                ReviewStar(color: Colors.yellow),
                ReviewStar(color: Colors.yellow),
                ReviewStar(color: kLightColor),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              newPrice,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 20,
              child: Center(
                child: Row(
                  children: [
                    Text(
                      oldPrice,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      offerPercentValue,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.delete_outline,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
