import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class SearchResultFailedScreen extends StatefulWidget {
  const SearchResultFailedScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultFailedScreen> createState() =>
      _SearchResultFailedScreenState();
}

class _SearchResultFailedScreenState extends State<SearchResultFailedScreen> {
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'filterSearchScreen');
                    },
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

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
                Container(
                  color: kWhiteColor,
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: kPrimaryColor,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 5.0,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset(
                                color: kWhiteColor,
                                'assets/icons/close.svg',
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            'Product Not Found',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'thank you for shopping using lafyuu',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 16.0,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'homeScreen');
                            },
                            child: const CustomButton(
                              title: 'Back To Home',
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
        ),
      ),
    );
  }
}
