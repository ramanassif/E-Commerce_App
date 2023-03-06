import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/account_payment_screen/widgets/credit_card_header.dart';
import 'package:flutter/material.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  String cardHolderName = 'Lailyfa Febrina';
  Color firstCardColor = kPrimaryColor;
  Color secondCardColor = const Color(0xff5C61F4);

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
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.69,
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'editCreditCardScreen',
                              arguments: {
                                'cardHolderName': cardHolderName,
                                'color': firstCardColor,
                              });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 190,
                          decoration: BoxDecoration(
                            color: firstCardColor,
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
                                            backgroundColor: kSecondaryColor
                                                .withOpacity(0.4),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      '6326',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                    Text(
                                      '9124',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                    Text(
                                      '8124',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                    Text(
                                      '9875',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor,
                                      ),
                                    ),
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
                        padding: const EdgeInsets.only(
                          top: 16.0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'editCreditCardScreen',
                                arguments: {
                                  'cardHolderName': cardHolderName,
                                  'color': secondCardColor,
                                });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 190,
                            decoration: BoxDecoration(
                              color: secondCardColor,
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
                                            backgroundColor: kSecondaryColor
                                                .withOpacity(0.4),
                                          ),
                                          Positioned(
                                            left: 13,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: kSecondaryColor
                                                  .withOpacity(0.4),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        '6326',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                      Text(
                                        '9124',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                      Text(
                                        '8124',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                      Text(
                                        '9875',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: kWhiteColor,
                                        ),
                                      ),
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
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
