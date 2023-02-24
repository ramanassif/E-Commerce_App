import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/explore_screen/widgets/fashion_item.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/home_screen_header.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavigationBarWidget(),
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const HomeScreenHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  'Man Fashion',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Wrap(
                  children: const [
                    FashionItem(
                      title: 'Man Shirt',
                      icon: 'assets/icons/shirt_man.svg',
                    ),
                    FashionItem(
                      title: 'Man Work\nEquipment',
                      icon: 'assets/icons/work_bag_man.svg',
                    ),
                    FashionItem(
                      title: 'Man T-Shirt',
                      icon: 'assets/icons/t-shirt_man.svg',
                    ),
                    FashionItem(
                      title: 'Man Shoes',
                      icon: 'assets/icons/man_shoes.svg',
                    ),
                    FashionItem(
                      title: 'Man Pants',
                      icon: 'assets/icons/man_pants.svg',
                    ),
                    FashionItem(
                      title: 'Man\nUnderwear',
                      icon: 'assets/icons/man_underwear.svg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0,),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  'Woman Fashion',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Wrap(
                  children: const [
                    FashionItem(
                      title: 'Dress',
                      icon: 'assets/icons/dress.svg',
                    ),
                    FashionItem(
                      title: 'Woman\nT-Shirt',
                      icon: 'assets/icons/t-shirt_man.svg',
                    ),
                    FashionItem(
                      title: 'Woman\nPants',
                      icon: 'assets/icons/woman_pants.svg',
                    ),
                    FashionItem(
                      title: 'Skirt',
                      icon: 'assets/icons/skirt.svg',
                    ),
                    FashionItem(
                      title: 'Woman Bag',
                      icon: 'assets/icons/woman_bag.svg',
                    ),
                    FashionItem(
                      title: 'High Heels',
                      icon: 'assets/icons/woman_shoes.svg',
                    ),
                    FashionItem(
                      title: 'Bikini',
                      icon: 'assets/icons/bikini.svg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
