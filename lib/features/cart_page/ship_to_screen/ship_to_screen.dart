import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/cart_page/ship_to_screen/widgets/ship_to_screen_header.dart';
import 'package:flutter/material.dart';

class ShipToScreen extends StatefulWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  State<ShipToScreen> createState() => _ShipToScreenState();
}

class _ShipToScreenState extends State<ShipToScreen> {
  List<String> shipName = ['Priscekila', 'Ahmad Khaidir'];
  int? currentIndex;

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
              const ShipToScreenHeader(),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.74,
                child: ListView.builder(
                  itemCount: shipName.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 16.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 240,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: currentIndex == index
                                  ? kPrimaryColor
                                  : kLightColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shipName[index],
                                style: const TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                '+99 1234567890',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, 'addAddressScreen',
                                          arguments: {
                                            'first_name': shipName[index],
                                          });
                                    },
                                    child: Container(
                                      width: 77,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: const [
                                          BoxShadow(
                                            offset: Offset(0, 4),
                                            blurRadius: 5.0,
                                            color: kPrimaryColor,
                                          ),
                                        ],
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                            color: kWhiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        shipName.removeAt(index);
                                      });
                                    },
                                    child: const Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ShipToDetails(
                    //   firstName: shipName[index],
                    //   isSelected: currentIndex == index ? true : false,
                    // ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'paymentScreen');
                  },
                  child: const CustomButton(
                    title: 'Next',
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
