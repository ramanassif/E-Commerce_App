import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/profile_screen/widgets/profile_details_item.dart';
import 'package:ecommerce_app/features/profile_screen/widgets/profile_screen_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String firstName = 'Maximus';
    String lastName = 'Gold';
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const ProfileScreenHeader(title: 'Profile'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 24.0,
                  bottom: 32.0,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/profile_picture.png'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              'changeNameProfile',
                              arguments: {
                                'First_name': firstName,
                                'last_name': lastName,
                              },
                            );
                          },
                          child: Text(
                            firstName + lastName,
                            style: const TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '@derlaxy',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const ProfileDetailsItem(
                leadingIcon: Icons.male,
                trailingIcon: CupertinoIcons.forward,
                title: 'Gender',
                description: 'Male',
              ),
              const SizedBox(
                height: 24,
              ),
              const ProfileDetailsItem(
                leadingIcon: Icons.date_range,
                trailingIcon: CupertinoIcons.forward,
                title: 'Birthday',
                description: '12-12-2000',
              ),
              const SizedBox(
                height: 24,
              ),
              const ProfileDetailsItem(
                leadingIcon: Icons.email_outlined,
                trailingIcon: CupertinoIcons.forward,
                title: 'Email',
                description: 'Derlaxy@yahoo.com',
              ),
              const SizedBox(
                height: 24,
              ),
              const ProfileDetailsItem(
                leadingIcon: Icons.phone_android,
                trailingIcon: CupertinoIcons.forward,
                title: 'Phone Number',
                description: '(307) 555-0133',
              ),
              const SizedBox(
                height: 24,
              ),
              const ProfileDetailsItem(
                leadingIcon: Icons.lock_outline_sharp,
                trailingIcon: CupertinoIcons.forward,
                title: 'Change Password',
                description: '•••••••••••••••••',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
