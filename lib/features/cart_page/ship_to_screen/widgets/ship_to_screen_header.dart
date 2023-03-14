import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ShipToScreenHeader extends StatelessWidget {
  const ShipToScreenHeader({Key? key}) : super(key: key);

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
            const Text(
              'Ship To',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: kSecondaryColor),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'addAddressScreen',
                  arguments: {
                    'first_name': '',
                  },
                );
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
