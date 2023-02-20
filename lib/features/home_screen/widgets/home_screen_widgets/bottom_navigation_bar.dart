import 'package:ecommerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        const Divider(
          color: kLightColor,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: kPrimaryColor,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    CupertinoIcons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topRight,
                    children: const [
                      Icon(
                        CupertinoIcons.cart,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Positioned(
                        top: -5,
                        right: -5,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.local_offer_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Offer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.person_2_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
