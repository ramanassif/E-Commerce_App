import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/home_Indicator.dart';
import 'package:ecommerce_app/features/account_payment_screen/widgets/credit_card_header.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const CreditCardHeader(title: 'Add Card'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 12.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  'Card Number',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: kSecondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Card Number',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    errorStyle: const TextStyle(height: 0),
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
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Expiration Date',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Expiration Date',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                              errorStyle: const TextStyle(height: 0),
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Security Code',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Security Code',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                              errorStyle: const TextStyle(height: 0),
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
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 12.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  'Card Holder',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: kSecondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Card Number',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    errorStyle: const TextStyle(height: 0),
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
              const SizedBox(
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const CustomButton(
                    title: 'Add Card',
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
