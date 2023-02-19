import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/home_screen/widgets/bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/home_screen/widgets/category_list_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/five_dots.dart';
import 'package:ecommerce_app/features/home_screen/widgets/header.dart';
import 'package:ecommerce_app/features/home_screen/widgets/offer_banner.dart';
import 'package:ecommerce_app/features/home_screen/widgets/recomended_product_banner.dart';
import 'package:ecommerce_app/features/home_screen/widgets/recomended_product_grid_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/sale_list_view.dart';
import 'package:ecommerce_app/features/home_screen/widgets/title_and_more.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavigatioBar(),
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
              const Header(),
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
                height: 10,
              ),
              const FiveDots(),
              const SizedBox(
                height: 20,
              ),
              const TitleAndMore(
                title: 'Category',
                more: 'More Category',
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
              const RcomendedProductBanner(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RecomendedProductGridView(
                listName: recomendedProduct,
                listImage: recomendedProductImage,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
