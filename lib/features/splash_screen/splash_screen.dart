import 'dart:async';

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/app_logo.dart';
import 'package:ecommerce_app/core/basics_widgets/generic_loader.dart';
import 'package:ecommerce_app/core/basics_widgets/home_Indicator.dart';
import 'package:ecommerce_app/features/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.8),
                child: const AppLogo(
                  firstColor: kWhiteColor,
                  secondColor: kPrimaryColor,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height / 4.2),
                child: const GenericLoader(),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height / 4.2),
                child: const HomeIndicator(
                  color: kWhiteColor,
                ),
              ),
            ],
          ),
        ),
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
          builder: (context) => const LoginScreen(),
        ),
      ),
    );
  }
}
