import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/home_indicator.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/helper_widgets/five_dots.dart';
import 'package:ecommerce_app/features/helper_widgets/person_review.dart';
import 'package:ecommerce_app/features/helper_widgets/review_star.dart';
import 'package:ecommerce_app/features/helper_widgets/title_and_more.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/sale_list_view/product_item.dart';
import 'package:ecommerce_app/features/product_details_screen/widgets/color_list.dart';
import 'package:ecommerce_app/features/product_details_screen/widgets/product_details_header.dart';
import 'package:ecommerce_app/features/product_details_screen/widgets/size_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
              const ProductDetailsHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                  'assets/images/product_details.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const FiveDots(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 300,
                      height: 60,
                      child: Text(
                        'Nike Air Zoom Pegasus 36 Miami',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.heart,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: const [
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: Colors.yellow),
                    ReviewStar(color: kLightColor),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '\$299,43',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Select Size',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const SizeCircle(),
                    itemCount: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Select Color',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ColorList(
                      color: colorList[index],
                    ),
                    itemCount: colorList.length,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Specification',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Text(
                          'Shown:',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Text(
                          'Laser \n Blue/Anthracite/Watermelon\n /White',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Text(
                          'Style:',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Text(
                          'CD0113-400',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: const Text(
                    'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      'reviewsScreen');
                },
                child: const TitleAndMore(
                  title: 'Review Product',
                  more: 'See More',
                  horizontalValue: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: const [
                      ReviewStar(color: Colors.yellow),
                      ReviewStar(color: Colors.yellow),
                      ReviewStar(color: Colors.yellow),
                      ReviewStar(color: Colors.yellow),
                      ReviewStar(color: kLightColor),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '(5 Review)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const PersonReview(personName: 'James Lawson',personImage: 'assets/images/profile_picture.png',),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 90,
                  child: Text(
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
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
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Product Picture01.png',
                      width: 72,
                      height: 72,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/Product Picture02.png',
                      width: 72,
                      height: 72,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/Product Picture03.png',
                      width: 72,
                      height: 72,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  'December 10, 2016',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleAndMore(
                title: 'You Might Also Like',
                more: ' ',
                horizontalValue: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductItem(
                      productName: recommendedProduct[index],
                      productImage: recommendedProductImage[index],
                      newPrice: '\$299,43',
                      oldPrice: '\$534,33',
                      offerPercentValue: '24% Off',
                    ),
                    itemCount: recommendedProduct.length,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0,),
                child: CustomButton(title: 'Add To Cart',),
              ),
              const SizedBox(height: 25,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 115.0),
                child: HomeIndicator(color: kLightColor,),
              ),
              const SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
