import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_screen_header.dart';
import 'package:flutter/material.dart';

class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = 'Profile';
    return Container(
      color: kWhiteColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const AccountScreenHeader(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 12,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'profileScreen',
                  arguments: {
                    'profile': title,
                  },
                );
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.person_2_outlined,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 12,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'orderScreen',
                  arguments: {
                    'status': 'shipping',
                  },
                );
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.shopping_basket_outlined,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 12,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'addressScreen',
                  arguments: {
                    'address': 'address_details',
                  },
                );
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 12,
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context,
                  'accountPaymentScreen',
                );
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
