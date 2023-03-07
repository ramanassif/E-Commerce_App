import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/helper_widgets/review_star.dart';
import 'package:flutter/material.dart';

class RecommendedProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String newPrice;
  final String oldPrice;
  final String offerPercentValue;

  const RecommendedProductItem({
    super.key,
    required this.productName,
    required this.productImage,
    required this.newPrice,
    required this.oldPrice,
    required this.offerPercentValue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'productDetailsScreen',arguments: {
          'product_image': productImage,
          'product_name': productName,
        });
      },
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          border: Border.all(
            color: kLightColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
            right: 14,
            top: 14.0,
          ),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(
                  height: 15,
                  child: Row(
                    children: const [
                      ReviewStar(
                        color: Colors.yellow,
                        size: 16,
                      ),
                      ReviewStar(
                        color: Colors.yellow,
                        size: 16,
                      ),
                      ReviewStar(
                        color: Colors.yellow,
                        size: 16,
                      ),
                      ReviewStar(
                        color: Colors.yellow,
                        size: 16,
                      ),
                      ReviewStar(
                        color: kLightColor,
                        size: 16,
                      ),
                    ],
                  ),
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
                  height: 15,
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
                        width: 15,
                      ),
                      Text(
                        offerPercentValue,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
