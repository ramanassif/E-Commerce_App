import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/favorite_screen/widgets/favorite_grid_view.dart';
import 'package:ecommerce_app/features/home_page/favorite_screen/widgets/favorite_screen_header.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<String> favoriteProduct = [
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
    'Nike Air Max 270 React ENG',
  ];
  List<String> favoriteProductImage = [
    'assets/images/product4.png',
    'assets/images/product5.png',
    'assets/images/product1.png',
    'assets/images/product2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
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
              Expanded(
                child: FavoriteGridView(
                  listName: favoriteProduct,
                  listImage: favoriteProductImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
