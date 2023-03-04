import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/data/data.dart';
import 'package:ecommerce_app/features/home_screen/widgets/home_screen_widgets/sale_list_view/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SearchResultScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const SearchResultScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Container(
          color: kWhiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 12.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Container(
              color: kWhiteColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: kWhiteColor,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    child: TextFormField(
                      controller: searchController,
                      keyboardType: TextInputType.name,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                      onChanged: (value) => setState(() {
                        isSearching = true;
                      }),
                      onEditingComplete: () {
                        setState(() {
                          if (searchController.text.isEmpty) {
                            isSearching = false;
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
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'sortByScreen');
                    },
                    child: const Icon(
                      CupertinoIcons.sort_down,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.filter_alt_outlined,
                    color: kPrimaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  @override
  void initState() {
    searchController.text = widget.mapArguments['name'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(AppBar().preferredSize.height),
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kWhiteColor,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 24.0,
                    bottom: 18.0,
                  ),
                  child: Row(
                    children: [
                      const Text(
                        '145 Result',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Man Shoes',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'categoryScreen');
                        },
                        child: Transform.rotate(
                          angle: -math.pi / 2,
                          child: const Icon(
                            CupertinoIcons.back,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                    child: GridView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 0.57,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 20),
                      itemCount: searchProductsName.length,
                      itemBuilder: (context, index) => ProductItem(
                        productName: searchProductsName[index],
                        productImage: searchProductsImage[index],
                        newPrice: '\$299,43',
                        oldPrice: '\$534,33',
                        offerPercentValue: '24% Off',
                      ),
                    ),
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
