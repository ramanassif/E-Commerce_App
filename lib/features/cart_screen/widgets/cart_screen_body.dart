import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/cart_screen/widgets/cart_screen_header.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({Key? key}) : super(key: key);

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
