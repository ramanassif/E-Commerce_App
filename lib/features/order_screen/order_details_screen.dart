import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account_screen/widgets/account_details_header.dart';
import 'package:ecommerce_app/features/order_screen/widgets/order_product.dart';
import 'package:ecommerce_app/features/order_screen/widgets/payment_details.dart';
import 'package:ecommerce_app/features/order_screen/widgets/shipping_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const OrderDetailsScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
              const AccountDetailsHeader(title: 'Order Details'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 28,
                  right: 28,
                  bottom: 12.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 12,
                      child: Center(
                        child: SvgPicture.asset(
                          color: kWhiteColor,
                          'assets/icons/success.svg',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 1,
                      color: kPrimaryColor,
                    ),
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 12,
                      child: Center(
                        child: SvgPicture.asset(
                          color: kWhiteColor,
                          'assets/icons/success.svg',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 1,
                      color: kPrimaryColor,
                    ),
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 12,
                      child: Center(
                        child: SvgPicture.asset(
                          color: kWhiteColor,
                          'assets/icons/success.svg',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 1,
                      color: kLightColor,
                    ),
                    CircleAvatar(
                      backgroundColor: kLightColor,
                      radius: 12,
                      child: Center(
                        child: SvgPicture.asset(
                          color: kWhiteColor,
                          'assets/icons/success.svg',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                ),
                child: Row(
                  children: const [
                    Text(
                      'Packing',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      'Shipping',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      'Arriving',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Success',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 24.0,
                  bottom: 12.0,
                ),
                child: Text(
                  'Product',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const OrderProduct(
                productImage: 'assets/images/product3.png',
                favoriteIcon: CupertinoIcons.heart_fill,
                color: Color(0xffFB7181),
              ),
              const SizedBox(
                height: 8,
              ),
              const OrderProduct(
                productImage: 'assets/images/product6.png',
                favoriteIcon: CupertinoIcons.heart,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 24.0,
                  bottom: 12.0,
                ),
                child: Text(
                  'Shipping Details',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const ShippingDetails(),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 24.0,
                  bottom: 12.0,
                ),
                child: Text(
                  'Payment Details',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const PaymentDetails(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CustomButton(
                    title: 'Notify Me',
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
