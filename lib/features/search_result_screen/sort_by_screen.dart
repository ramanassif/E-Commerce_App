import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/search_result_screen/widgets/sort_by_header.dart';
import 'package:flutter/material.dart';

class SortByScreen extends StatelessWidget {
  const SortByScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const SortByScreenHeader(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0,top: 16.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Best Match',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 32,),
                      Text(
                        'Time: ending soonest',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor,
                        ),
                      ),
                      SizedBox(height: 32,),
                      Text(
                        'Time: newly listed',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor,
                        ),
                      ),
                      SizedBox(height: 32,),
                      Text(
                        'Price + Shipping: lowest first',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor,
                        ),
                      ),
                      SizedBox(height: 32,),
                      Text(
                        'Price + Shipping: highest first',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor,
                        ),
                      ),
                      SizedBox(height: 32,),
                      Text(
                        'Distance: nearest first',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
