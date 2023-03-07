import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final String newPrice;
  final String oldPrice;
  final String offerPercentValue;

  const ProductItem({
    super.key,
    required this.productName,
    required this.productImage,
    required this.newPrice,
    required this.oldPrice,
    required this.offerPercentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'productDetailsScreen', arguments: {
            'product_image': productImage,
            'product_name': productName,
          });
        },
        child: Container(
          width: 150,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            border: Border.all(
              color: kLightColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  productImage,
                  width: 109,
                  height: 109,
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
                  height: 10,
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
                  height: 10,
                ),
                Row(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
