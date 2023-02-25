import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferScreenHeader extends StatelessWidget {
  const OfferScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,),
      child: Row(
        children: const [
          Text(
            'Offer',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor),
          ),
          Spacer(),
        ],
      ),
    );;
  }
}
