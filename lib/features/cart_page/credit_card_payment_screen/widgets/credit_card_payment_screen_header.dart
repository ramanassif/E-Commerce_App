import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardPaymentHeader extends StatelessWidget {
  const CreditCardPaymentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
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
              'Choose Card',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'addCardScreen');
              },
              child: const Icon(
                Icons.add,
                size: 24,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
