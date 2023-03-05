import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/home_page/favorite_screen/widgets/favorite_grid_view.dart';
import 'package:ecommerce_app/features/home_page/favorite_screen/widgets/favorite_screen_header.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
              const FavoriteScreenHeader(),
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
              FavoriteGridView(
                listName: favoriteProduct,
                listImage: favoriteProductImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
