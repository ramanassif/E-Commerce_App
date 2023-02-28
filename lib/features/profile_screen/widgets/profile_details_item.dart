import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ProfileDetailsItem extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String description;

  const ProfileDetailsItem({
    Key? key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22.0,
        right: 25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            leadingIcon,
            size: 24,
            color: kPrimaryColor,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: kSecondaryColor),
          ),
          const Spacer(),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Icon(
            trailingIcon,
            size: 24,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
