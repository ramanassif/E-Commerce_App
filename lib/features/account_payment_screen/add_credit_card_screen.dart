import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/home_Indicator.dart';
import 'package:ecommerce_app/features/account_payment_screen/widgets/credit_card_header.dart';
import 'package:ecommerce_app/features/credit_card_payment_screen/widgets/credit_card_payment_screen_header.dart';
import 'package:flutter/material.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
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
              const CreditCardHeader(title: 'Credit Card And Debit'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor:
                                  kSecondaryColor.withOpacity(0.4),
                                ),
                                Positioned(
                                  left: 13,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor:
                                    kSecondaryColor.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Text(
                              '6326     9124     8124    9875',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: kWhiteColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Text(
                              'CARD HOLDER',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            Text(
                              'CARD SAVE',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Lailyfa Febrina',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              '19/2042',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0,),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                    color: const Color(0xff5C61F4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor:
                                  kSecondaryColor.withOpacity(0.4),
                                ),
                                Positioned(
                                  left: 13,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor:
                                    kSecondaryColor.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Text(
                              '6326     9124     8124    9875',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: kWhiteColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Text(
                              'CARD HOLDER',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            Text(
                              'CARD SAVE',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Lailyfa Febrina',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              '19/2042',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 145,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'addCardScreen');
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
