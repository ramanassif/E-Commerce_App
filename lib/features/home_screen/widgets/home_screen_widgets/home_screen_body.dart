import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/helper_widgets/five_dots.dart';
import 'package:ecommerce_app/features/helper_widgets/title_and_more.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/category_list/category_list_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/home_screen_header.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/offer_banner/offer_banner.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/recommended_product_banner/recommended_product_banner.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/recommended_product_grid_view/recommended_product_grid_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/sale_list_view/sale_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          const OfferBanner(),
          const SizedBox(
            height: 5,
          ),
          const FiveDots(),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'categoryScreen');
            },
            child: const TitleAndMore(
              title: 'Category',
              more: 'More Category',
              horizontalValue: 24.0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CategoryListView(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const TitleAndMore(
            title: 'Flash Sale',
            more: 'See More',
            horizontalValue: 24.0,
          ),
          const SizedBox(
            height: 10,
          ),
          SaleListView(
            listName: productNameFlashSale,
            listImage: productImageFlashSale,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const TitleAndMore(
            title: 'Mega Sale',
            more: 'See More',
            horizontalValue: 24.0,
          ),
          const SizedBox(
            height: 10,
          ),
          SaleListView(
            listName: productNameMegaSale,
            listImage: productImageMegaSale,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const RecommendedProductBanner(title: 'Recommended Product',description: 'We recommend the best for you'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          RecommendedProductGridView(
            listName: recommendedProduct,
            listImage: recommendedProductImage,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
