import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(color: kLightColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Date Shipping',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'January 16, 2015',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                children: const [
                  Text(
                    'Shipping',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'POS Reggular',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                children: const [
                  Text(
                    'No. Resi',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '000192848573',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '2727 Lakeshore\nRd undefined Nampa,\nTennessee 78410',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
