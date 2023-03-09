import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/form_error.dart';
import 'package:ecommerce_app/features/cart_page/cart_screen/widgets/cart_screen_header.dart';
import 'package:ecommerce_app/features/cart_page/cart_screen/widgets/total_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({Key? key}) : super(key: key);

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  final cuponFormKey = GlobalKey<FormState>();
  String cuponCode = 'XzOp014524BDH';
  bool wrongCupon = false;
  List<String> errors = ['* Your Cupon Is Not Correct '];
  String cartProductImage = 'assets/images/shoes.png';
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  int numOfProduct1 = 1;
  int numOfProduct2 = 1;
  bool isVisible1 = true;
  bool isVisible2 = true;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            color: kWhiteColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const CartScreenHeader(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Visibility(
                        visible: isVisible1 ? true : false,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 12,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 104,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: kLightColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(cartProductImage,
                                          width: 72, height: 72),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16.0,
                                              right: 16.0,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Expanded(
                                                  flex: 3,
                                                  child: SizedBox(
                                                    width: 138,
                                                    child: Text(
                                                      'Nike Air Zoom Pegasus 36 Miami',
                                                      style: TextStyle(
                                                          color:
                                                              kSecondaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        isFavorite1 =
                                                            !isFavorite1;
                                                      });
                                                    },
                                                    child: Icon(
                                                      isFavorite1
                                                          ? CupertinoIcons
                                                              .heart_fill
                                                          : CupertinoIcons
                                                              .heart,
                                                      color: isFavorite1
                                                          ? const Color(
                                                              0xffFB7181)
                                                          : Colors.grey,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                                //const Spacer(),
                                                Expanded(
                                                  flex: 1,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        isVisible1 = false;
                                                      });
                                                    },
                                                    child: const Icon(
                                                      Icons.delete_outline,
                                                      color: Colors.grey,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0, right: 16.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    '\$299,43',
                                                    style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            numOfProduct1--;
                                                          });
                                                        },
                                                        child: Container(
                                                          width: 32,
                                                          height: 24,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  kLightColor,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                            ),
                                                          ),
                                                          child: const Center(
                                                            child: Icon(
                                                              CupertinoIcons
                                                                  .minus,
                                                              color:
                                                                  Colors.grey,
                                                              size: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 32,
                                                        height: 24,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: kLightColor,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            numOfProduct1 > 1
                                                                ? numOfProduct1
                                                                    .toString()
                                                                : '1',
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  kSecondaryColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            numOfProduct1++;
                                                          });
                                                        },
                                                        child: Container(
                                                          width: 32,
                                                          height: 24,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  kLightColor,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                          ),
                                                          child: const Center(
                                                            child: Icon(
                                                              CupertinoIcons
                                                                  .plus,
                                                              color:
                                                                  Colors.grey,
                                                              size: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
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
                      ),
                      Visibility(
                          visible: isVisible2 ? true : false,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 12,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 104,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: kLightColor,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(cartProductImage,
                                            width: 72, height: 72),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: SizedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 16.0,
                                                right: 16.0,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: 138,
                                                      child: Text(
                                                        'Nike Air Zoom Pegasus 36 Miami',
                                                        style: TextStyle(
                                                            color:
                                                                kSecondaryColor,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isFavorite2 =
                                                              !isFavorite2;
                                                        });
                                                      },
                                                      child: Icon(
                                                        isFavorite2
                                                            ? CupertinoIcons
                                                                .heart_fill
                                                            : CupertinoIcons
                                                                .heart,
                                                        color: isFavorite2
                                                            ? const Color(
                                                                0xffFB7181)
                                                            : Colors.grey,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                  //const Spacer(),
                                                  Expanded(
                                                    flex: 1,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isVisible2 = false;
                                                        });
                                                      },
                                                      child: const Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.grey,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16.0, right: 16.0),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      '\$299,43',
                                                      style: TextStyle(
                                                        color: kPrimaryColor,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfProduct2--;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 32,
                                                            height: 24,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    kLightColor,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        5),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        5),
                                                              ),
                                                            ),
                                                            child: const Center(
                                                              child: Icon(
                                                                CupertinoIcons
                                                                    .minus,
                                                                color:
                                                                    Colors.grey,
                                                                size: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 32,
                                                          height: 24,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: kLightColor,
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              numOfProduct2 > 1
                                                                  ? numOfProduct2
                                                                      .toString()
                                                                  : '1',
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    kSecondaryColor,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfProduct2++;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 32,
                                                            height: 24,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    kLightColor,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        5),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                            ),
                                                            child: const Center(
                                                              child: Icon(
                                                                CupertinoIcons
                                                                    .plus,
                                                                color:
                                                                    Colors.grey,
                                                                size: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 56,
                                    child: Form(
                                      key: cuponFormKey,
                                      child: TextField(
                                        controller: textEditingController,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: 'Enter Your Cupon',
                                          hintStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                              color: Color(0xffEBF0FF),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (textEditingController.text !=
                                          cuponCode) {
                                        setState(() {
                                          wrongCupon = true;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        border: Border.all(
                                          color: kPrimaryColor,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Apply',
                                          style: TextStyle(
                                            color: kWhiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Visibility(
                              visible: wrongCupon ? true : false,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                ),
                                child: FormError(
                                  errors: errors,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TotalPrice(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 8,
                    bottom: 16.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'shipToScreen');
                    },
                    child: const CustomButton(
                      title: 'Check Out',
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
