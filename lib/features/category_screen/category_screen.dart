import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/home_indicator.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/category_screen/widgets/category_item.dart';
import 'package:ecommerce_app/features/category_screen/widgets/category_screen_header.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
              const CategoryScreenHeader(),
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
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) => CategoryScreenItem(
                    categoryScreenItemName: categoryList[index],
                    categoryScreenItemIcon: categoryListIcon[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 115.0),
                child: HomeIndicator(
                  color: kLightColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
