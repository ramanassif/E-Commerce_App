import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_item.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_screen_header.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'notificationOfferScreen');
                },
                child: const NotificationItem(
                  icon: Icons.local_offer_outlined,
                  title: 'Offer',
                  numberOfNotification: '3',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'notificationFeedScreen');
                },
                child: const NotificationItem(
                  icon: Icons.feed_outlined,
                  title: 'Feed',
                  numberOfNotification: '3',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'notificationActivityScreen');
                },
                child: const NotificationItem(
                  icon: Icons.notifications_none,
                  title: 'Activity',
                  numberOfNotification: '3',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
