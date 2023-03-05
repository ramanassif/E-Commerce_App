import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_offer_item.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_screen_header.dart';
import 'package:flutter/material.dart';

class NotificationOfferScreen extends StatelessWidget {
  const NotificationOfferScreen({Key? key}) : super(key: key);

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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const NotificationScreenHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              const SizedBox(
                height: 10,
              ),
              const NotificationOfferItem(
                title: 'The Best Title',
                description:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM',
              ),
              const NotificationOfferItem(
                title: 'SUMMER OFFER 98% Cashback',
                description:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                date: 'April 30, 2014 1:01 PM',
              ),
              const NotificationOfferItem(
                title: 'Special Offer 25% OFF',
                description:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
