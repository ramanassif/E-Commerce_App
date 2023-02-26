import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/form_error.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/cart_screen_header.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/product_details.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/total_price.dart';
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
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
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
            const CartScreenHeader(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffEBF0FF),
            ),
            const ProductDetails(
                productImage: 'assets/images/product3.png',
                favoriteIcon: CupertinoIcons.heart_fill,
                color: Color(0xffFB7181)),
            const ProductDetails(
              productImage: 'assets/images/product6.png',
              favoriteIcon: CupertinoIcons.heart,
              color: Colors.grey,
            ),
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
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (textEditingController.text != cuponCode) {
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
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16,
              ),
              child: CustomButton(
                title: 'Check Out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
