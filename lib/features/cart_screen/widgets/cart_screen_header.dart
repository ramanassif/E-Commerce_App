import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class CartScreenHeader extends StatelessWidget {
  const CartScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,),
      child: Row(
        children: const [
          Text(
            'Your Cart',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
