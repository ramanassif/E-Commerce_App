import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:ecommerce_app/features/account/profile_screen/widgets/profile_details_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ProfileScreen({Key? key,required this.mapArguments}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              const AccountDetailsHeader(title: 'Profile'),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'changeGenderScreen',
                    arguments: {
                      'Gender': widget.mapArguments['Gender'] ?? 'Male',
                    },
                  );
                },
                child: ProfileDetailsItem(
                  leadingIcon: Icons.male,
                  trailingIcon: CupertinoIcons.forward,
                  title: 'Gender',
                  description: widget.mapArguments['Gender'] ?? 'Male',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'changeBirthDayScreen',
                    arguments: {
                      'birthday': widget.mapArguments['birthday'] ?? '2012-12-12',
                    },
                  );
                },
                child: ProfileDetailsItem(
                  leadingIcon: Icons.date_range,
                  trailingIcon: CupertinoIcons.forward,
                  title: 'Birthday',
                  description: widget.mapArguments['birthday'] ?? '2012-12-12',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'changeEmailScreen',
                    arguments: {
                      'Email': widget.mapArguments['Email'] ?? 'Derlaxy@yahoo.com',
                    },
                  );
                },
                child: ProfileDetailsItem(
                  leadingIcon: Icons.email_outlined,
                  trailingIcon: CupertinoIcons.forward,
                  title: 'Email',
                  description: widget.mapArguments['Email'] ?? 'Derlaxy@yahoo.com',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'changePhoneNumberScreen',
                    arguments: {
                      'phone_number': widget.mapArguments['phone_number'] ?? '(307) 555-0133',
                    },
                  );
                },
                child: ProfileDetailsItem(
                  leadingIcon: Icons.phone_android,
                  trailingIcon: CupertinoIcons.forward,
                  title: 'Phone Number',
                  description: widget.mapArguments['phone_number'] ?? '(307) 555-0133',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'changePasswordScreen',
                    arguments: {
                      'password': widget.mapArguments['password'] ?? '•••••••••••••••••',
                    },
                  );
                },
                child: ProfileDetailsItem(
                  leadingIcon: Icons.lock_outline_sharp,
                  trailingIcon: CupertinoIcons.forward,
                  title: 'Change Password',
                  description: widget.mapArguments['password'] ?? '•••••••••••••••••',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
