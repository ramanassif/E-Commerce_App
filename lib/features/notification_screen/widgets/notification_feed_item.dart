import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class NotificationFeedItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;

  const NotificationFeedItem({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 48,
            height: 48,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
