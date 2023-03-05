import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class AccountScreenHeader extends StatelessWidget {
  const AccountScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,),
      child: Row(
        children: const [
          Text(
            'Account',
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
