import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FashionItem extends StatelessWidget {
  final String title;
  final String icon;

  const FashionItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0,bottom: 16.0,),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(66),
              border: Border.all(
                color: kLightColor,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  color: kPrimaryColor,
                  icon,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
