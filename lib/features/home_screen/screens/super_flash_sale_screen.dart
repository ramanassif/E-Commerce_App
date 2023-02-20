import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/offer_banner/offer_banner.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/recommended_product_grid_view/recommended_product_grid_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/super_flash_sale_screen_widgets/super_flash_sale_header.dart';
import 'package:flutter/material.dart';

class SuperFlashSale extends StatelessWidget {
  const SuperFlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const SuperFlashSaleHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.007,
              ),
              const OfferBanner(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RecommendedProductGridView(
                listName: superFlashProduct,
                listImage: superFlashProductImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
