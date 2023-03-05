import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_activity_item.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/widgets/notification_screen_header.dart';
import 'package:flutter/material.dart';

class NotificationActivityScreen extends StatelessWidget {
  const NotificationActivityScreen({Key? key}) : super(key: key);

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
              const NotificationActivityItem(
                title: 'Transaction Nike Air Zoom Product',
                description:
                'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM',
              ),
              const NotificationActivityItem(
                title: 'Transaction Nike Air Zoom Pegasus 36 Miami',
                description:
                'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                date: 'April 30, 2014 1:01 PM',
              ),
              const NotificationActivityItem(
                title: 'Transaction Nike Air Max',
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
