import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class LoginWay extends StatefulWidget {
  final String wayName;
  final String wayImage;
  const LoginWay({
    super.key,
    required this.wayName,
    required this.wayImage,
  });

  @override
  State<LoginWay> createState() => _LoginWayState();
}

class _LoginWayState extends State<LoginWay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          border: Border.all(
            color: const Color(0xffEBF0FF),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
          ),
          child: Row(
            children: [
              Image.asset(
                widget.wayImage,
                width: 20,
                height: 25,
              ),
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: Center(
                  child: Text(
                    widget.wayName,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
