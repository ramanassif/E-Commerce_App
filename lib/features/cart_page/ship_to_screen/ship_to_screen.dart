import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/cart_page/ship_to_screen/widgets/ship_to_details.dart';
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
                height: MediaQuery.of(context).size.height * 0.71,
                child: ListView.builder(
                  itemCount: shipName.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: ShipToDetails(
                      title: shipName[index],
                      isSelected: currentIndex == index ? true : false,
                    ),
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
