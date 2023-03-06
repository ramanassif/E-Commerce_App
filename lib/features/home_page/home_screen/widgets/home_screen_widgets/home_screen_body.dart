import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/helper_widgets/five_dots.dart';
import 'package:ecommerce_app/features/helper_widgets/title_and_more.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/category_list/category_list_view.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/offer_banner/offer_banner.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/recommended_product_banner/recommended_product_banner.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/recommended_product_grid_view/recommended_product_grid_view.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/sale_list_view/sale_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: kWhiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 12.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: [
                Container(
                  color: kWhiteColor,
                  width: isSearching
                      ? MediaQuery.of(context).size.width * 0.77
                      : MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    onChanged: (value) => setState(() {
                      isSearching = true;
                    }),
                    onEditingComplete: () {
                      setState(() {
                        if (searchController.text.isEmpty) {
                          isSearching = false;
                        } else {
                          Navigator.pushNamed(
                              context, 'searchResultFailedScreen');
                        }
                      });
                    },
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: 'Search Product',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Color(0xffEBF0FF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: MaterialStateColor.resolveWith(
                          (states) => states.contains(MaterialState.focused)
                              ? kPrimaryColor
                              : states.contains(MaterialState.error)
                                  ? Colors.red
                                  : kPrimaryColor),
                    ),
                  ),
                ),
                Visibility(
                  visible: isSearching ? false : true,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'favoriteScreen');
                    },
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
                Visibility(
                  visible: isSearching ? false : true,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'notificationScreen');
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: const [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: isSearching ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_voice_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: isSearching
          ? GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: kWhiteColor,
                child: ListView(
                  children: [
                    const Divider(
                      thickness: 1,
                      color: Color(0xffEBF0FF),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 32.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, 'searchResultScreen',
                                      arguments: {
                                        'name': 'Nike Air Max',
                                      });
                                },
                                child: const Text(
                                  'Nike Air Max 270 React ENG',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Vapormax 360',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 270 React ENG ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 270 React',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air VaporMax Flyknit 3',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                'Nike Air Max 97 Utility',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Container(
                color: kWhiteColor,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
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
                      onTap: () {
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
                    const RecommendedProductBanner(
                        title: 'Recommended Product',
                        description: 'We recommend the best for you'),
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
              ),
            ),
    );
  }
}
