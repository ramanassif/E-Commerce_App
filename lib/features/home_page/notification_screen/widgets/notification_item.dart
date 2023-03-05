import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String numberOfNotification;

  const NotificationItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.numberOfNotification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 24.0,),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: kPrimaryColor,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: const Color(0xffFB7181),
            radius: 10,
            child: Text(
              numberOfNotification,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
