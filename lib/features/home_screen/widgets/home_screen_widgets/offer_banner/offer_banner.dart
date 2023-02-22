import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_screen/screens/super_flash_sale_screen.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/offer_banner/offer_time_container.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/offer_banner/two_dots.dart';
import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24),
      child: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(
                context,
                'superFlashSaleScreen');
          },
          child: Container(
            width: 343,
            height: 206,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Promotion_Image.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        width: 200,
                        height: 100,
                        child: Text(
                          'Super Flash Sale 50% Off',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          OfferTimeContainer(time: '08'),
                          SizedBox(
                            width: 5,
                          ),
                          TwoDots(),
                          SizedBox(
                            width: 5,
                          ),
                          OfferTimeContainer(time: '34'),
                          SizedBox(
                            width: 5,
                          ),
                          TwoDots(),
                          SizedBox(
                            width: 5,
                          ),
                          OfferTimeContainer(time: '52'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
