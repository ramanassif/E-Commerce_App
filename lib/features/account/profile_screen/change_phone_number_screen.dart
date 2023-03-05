import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:flutter/material.dart';

class ChangePhoneNumberScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ChangePhoneNumberScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<ChangePhoneNumberScreen> createState() =>
      _ChangePhoneNumberScreenState();
}

class _ChangePhoneNumberScreenState extends State<ChangePhoneNumberScreen> {
  bool isSelected = false;
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            color: kWhiteColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const AccountDetailsHeader(title: 'Phone Number'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'Your Email',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: 'Your Email',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Color(0xffEBF0FF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.phone_android),
                    ),
                    onEditingComplete: (){
                      setState(() {
                        widget.mapArguments['phone_number'] = phoneNumberController.text;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 420),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        'profileScreen',
                        arguments: {
                          'phone_number': widget.mapArguments['phone_number'],
                        },
                      );
                    },
                    child: const CustomButton(
                      title: 'Save',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    phoneNumberController.text = widget.mapArguments['phone_number'];
    super.initState();
  }
}
