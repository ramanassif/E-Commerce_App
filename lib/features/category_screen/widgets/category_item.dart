import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreenItem extends StatelessWidget {
  final String categoryScreenItemName;
  final String categoryScreenItemIcon;

  const CategoryScreenItem({
    Key? key,
    required this.categoryScreenItemName,
    required this.categoryScreenItemIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              color: kPrimaryColor,
              categoryScreenItemIcon,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            categoryScreenItemName,
            style: const TextStyle(
              color: kSecondaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
