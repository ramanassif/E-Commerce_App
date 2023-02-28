import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/account_screen/widgets/account_screen_header.dart';
import 'package:flutter/material.dart';

class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const AccountScreenHeader(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffEBF0FF),
          ),
        ],
      ),
    );
  }
}
