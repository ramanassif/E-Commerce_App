import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class RecommendedProductBanner extends StatelessWidget {
  final String title;
  final String description;
  const RecommendedProductBanner({super.key,required this.title,required this.description,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 206,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/recommended_product.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 200,
                    height: 100,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: kWhiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: kWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
