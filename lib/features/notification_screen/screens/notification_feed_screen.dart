import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/notification_screen/widgets/notification_feed_item.dart';
import 'package:ecommerce_app/features/notification_screen/widgets/notification_screen_header.dart';
import 'package:flutter/material.dart';

class NotificationFeedScreen extends StatelessWidget {
  const NotificationFeedScreen({Key? key}) : super(key: key);

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
              const NotificationFeedItem(
                image: 'assets/images/Product Picture01.png',
                title: 'New Product',
                description:
                    'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                date: 'June 3, 2015 5:06 PM',
              ),
              const NotificationFeedItem(
                image: 'assets/images/Product Picture02.png',
                title: 'Best Product',
                description:
                'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                date: 'June 3, 2015 5:06 PM',
              ),
              const NotificationFeedItem(
                image: 'assets/images/Product Picture03.png',
                title: 'New Product',
                description:
                'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                date: 'June 3, 2015 5:06 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
