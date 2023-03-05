import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/home_page/home_screen/widgets/home_screen_widgets/search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 12.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Container(
          color: kWhiteColor,
          child: Row(
            children: [
              Container(
                color: kWhiteColor,
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: const SearchTextField(),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context,
                      'favoriteScreen');
                },
                icon: const Icon(
                  CupertinoIcons.heart,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'notificationScreen');
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topRight,
                  children: const [
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 2.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}