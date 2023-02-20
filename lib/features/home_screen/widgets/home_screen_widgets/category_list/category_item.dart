import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final String categoryItemName;
  final String categoryItemIcon;
  const CategoryItem({
    super.key,
    required this.categoryItemName,
    required this.categoryItemIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: kLightColor,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  color: kPrimaryColor,
                  categoryItemIcon,
                ),
              ),
            ),
          ),
          Text(
            categoryItemName,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
