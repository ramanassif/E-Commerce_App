import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/offer_banner/offer_banner.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/recommended_product_banner/recommended_product_banner.dart';
import 'package:ecommerce_app/features/offer_screen/widgets/offer_screen_header.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const OfferScreenHeader(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 80,
                  child: Text(
                    'Use “MEGSL” Cupon For\nGet 90%off',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const OfferBanner(),
          const SizedBox(
            height: 15,
          ),
          const RecommendedProductBanner(
            title: '90% Off Super Mega Sale',
            description: 'Special birthday Lafyuu',
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
