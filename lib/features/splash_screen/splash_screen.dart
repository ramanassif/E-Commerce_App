import 'dart:async';

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/app_logo.dart';
import 'package:ecommerce_app/core/basics_widgets/generic_loader.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.1),
            child: const AppLogo(
              firstColor: kSecondaryColor,
              secondColor: kPrimaryColor,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 6.3),
            child: const GenericLoader(),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4.3),
            child: Container(
              width: 134,
              height: 5,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Container(
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
