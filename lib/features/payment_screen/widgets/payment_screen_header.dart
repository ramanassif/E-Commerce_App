import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreenHeader extends StatelessWidget {
  const PaymentScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              CupertinoIcons.back,
              size: 24,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Payment',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor),
          ),
        ],
      ),
    );
  }
}
