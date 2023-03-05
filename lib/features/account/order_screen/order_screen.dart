import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:ecommerce_app/features/account/order_screen/widgets/order_item_details.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const OrderScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> orderName = ['LQNSU346JK', 'SDG1345KJD'];
  List<String> orderDate = [
    'Order at Lafyuu : August 1, 2017',
    'Order at Lafyuu : August 1, 2017'
  ];
  List<String> orderStatus = ['Shipping', 'Shipping'];
  List<String> orderItems = ['2 Items purchased', '1 Items purchased'];
  List<String> orderPrice = ['\$299,43', '\$299,43'];
  int? currentIndex;

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
              const AccountDetailsHeader(title: 'Order'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: orderName.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                      Navigator.pushNamed(
                        context,
                        'orderDetailsScreen',
                        arguments: {
                          'status': 'Shipping',
                        },
                      );
                    },
                    child: OrderItemDetails(
                      title: orderName[index],
                      date: orderDate[index],
                      status: orderStatus[index],
                      items: orderItems[index],
                      price: orderPrice[index],
                      isSelected: currentIndex == index ? true : false,
                    ),
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
