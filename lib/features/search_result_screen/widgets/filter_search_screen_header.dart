import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterSearchScreenHeader extends StatelessWidget {
  const FilterSearchScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 8.0,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              width: 20,
              height: 20,
              color: Colors.grey,
              'assets/icons/close.svg',
            ),
          ),
          const SizedBox(width: 19,),
          const Text(
            'Filter Search',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
