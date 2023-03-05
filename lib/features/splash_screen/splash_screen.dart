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
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kPrimaryColor,
          child: ListView(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
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
      () => Navigator.pushNamed(
        context,
        'loginScreen'),
      );
  }
}
