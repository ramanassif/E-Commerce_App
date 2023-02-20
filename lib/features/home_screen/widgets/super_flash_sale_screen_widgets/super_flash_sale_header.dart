import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperFlashSaleHeader extends StatelessWidget {
  const SuperFlashSaleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.grey,
              size: 20,
            ),
          ),
          const Text(
            'Super Flash Sale',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
