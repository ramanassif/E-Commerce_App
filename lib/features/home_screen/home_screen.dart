import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/cart_screen_body.dart';
import 'package:ecommerce_app/features/explore_screen/widgets/explore_screen_body.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/home_screen_body.dart';
import 'package:ecommerce_app/features/offer_screen/widgets/offer_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;
  List pages = [
    const HomeScreenBody(),
    const ExploreScreenBody(),
    const CartScreenBody(),
    const OfferScreen(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
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
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedTab = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 30,
                          color: selectedTab==0? kPrimaryColor : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: selectedTab==0? kPrimaryColor : Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedTab = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          size: 30,
                          color: selectedTab==1? kPrimaryColor : Colors.grey,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                            color: selectedTab==1? kPrimaryColor : Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedTab = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topRight,
                          children: [
                            Icon(
                              CupertinoIcons.cart,
                              size: 30,
                              color: selectedTab==2? kPrimaryColor : Colors.grey,
                            ),
                            const Positioned(
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
                        Text(
                          'Cart',
                          style: TextStyle(
                            color: selectedTab==2? kPrimaryColor : Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedTab = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          size: 30,
                          color: selectedTab==3? kPrimaryColor : Colors.grey,
                        ),
                        Text(
                          'Offer',
                          style: TextStyle(
                            color: selectedTab==3? kPrimaryColor : Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedTab = 4;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          size: 30,
                          color: selectedTab==4? kPrimaryColor : Colors.grey,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color: selectedTab==4? kPrimaryColor : Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        body: pages[selectedTab],
      ),
    );
  }
}
