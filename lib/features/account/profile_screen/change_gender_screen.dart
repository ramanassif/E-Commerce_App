import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChangeGenderScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ChangeGenderScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<ChangeGenderScreen> createState() => _ChangeGenderScreenState();
}

class _ChangeGenderScreenState extends State<ChangeGenderScreen> {
  // List<String> genderList = [];
  // String? selectItem;
  bool isSelected = false;

  @override
  void initState() {
    // selectItem = widget.mapArguments['Gender'];
    // genderList.add(widget.mapArguments['Gender']);
    // if (genderList.first == 'Male') {
    //   genderList.add('Female');
    // } else {
    //   genderList.add('Male');
    // }
    // if (genderList[0] == 'Male') {
    //   genderList[1] = 'Female';
    // } else {
    //   genderList[1] = ' Male';
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            // setState(() {
            //   isSelected = false;
            // });
          },
          child: Container(
            color: kWhiteColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const AccountDetailsHeader(title: 'Gender'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'Choose Gender',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = true;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 48,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 48,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: isSelected
                                        ? kPrimaryColor
                                        : kLightColor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 22,
                                  top: 13,
                                  bottom: 13,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.mapArguments['Gender'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Spacer(),
                                    Transform.rotate(
                                      angle: -math.pi / 2,
                                      child: const Icon(
                                        CupertinoIcons.back,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Visibility(
                          visible: isSelected ? true : false,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 144,
                            decoration: BoxDecoration(
                              border: Border.all(color: kLightColor),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 13.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.mapArguments['Gender'] = 'Male';
                                        isSelected = false;
                                      });
                                    },
                                    child: Text(
                                      'Male',
                                      style: TextStyle(
                                        color: widget.mapArguments['Gender'] ==
                                                'Male'
                                            ? kPrimaryColor
                                            : Colors.grey,
                                        fontSize: 12,
                                        fontWeight:
                                            widget.mapArguments['Gender'] ==
                                                    'Male'
                                                ? FontWeight.w700
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 26,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.mapArguments['Gender'] =
                                            'Female';
                                        isSelected = false;
                                      });
                                    },
                                    child: Text(
                                      'Female',
                                      style: TextStyle(
                                        color: widget.mapArguments['Gender'] ==
                                                'Female'
                                            ? kPrimaryColor
                                            : Colors.grey,
                                        fontSize: 12,
                                        fontWeight:
                                            widget.mapArguments['Gender'] ==
                                                    'Female'
                                                ? FontWeight.w700
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 26,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.mapArguments['Gender'] = 'Other';
                                        isSelected = false;
                                      });
                                    },
                                    child: Text(
                                      'Other',
                                      style: TextStyle(
                                        color: widget.mapArguments['Gender'] ==
                                                'Other'
                                            ? kPrimaryColor
                                            : Colors.grey,
                                        fontSize: 12,
                                        fontWeight:
                                            widget.mapArguments['Gender'] ==
                                                    'Other'
                                                ? FontWeight.w700
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 300),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        'profileScreen',
                        arguments: {
                          'Gender': widget.mapArguments['Gender'],
                        },
                      );
                    },
                    child: const CustomButton(
                      title: 'Save',
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                //   child: SizedBox(
                //     width: MediaQuery.of(context).size.width,
                //     child: DropdownButton<String>(
                //       value: selectItem,
                //       items: genderList
                //           .map(
                //             (item) => DropdownMenuItem(
                //               value: item,
                //               child: Text(
                //                 item,
                //                 style: const TextStyle(
                //                   fontSize: 12,
                //                   fontWeight: FontWeight.w700,
                //                 ),
                //               ),
                //             ),
                //           )
                //           .toList(),
                //       onChanged: (item) => setState(() {
                //         selectItem = item;
                //       }),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
