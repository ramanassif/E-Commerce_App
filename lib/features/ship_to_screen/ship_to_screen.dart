import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/ship_to_screen/widgets/ship_to_screen_header.dart';
import 'package:flutter/material.dart';

class ShipToScreen extends StatefulWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  State<ShipToScreen> createState() => _ShipToScreenState();
}

class _ShipToScreenState extends State<ShipToScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
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
            ],
          ),
        ),
      ),
    );
  }
}
