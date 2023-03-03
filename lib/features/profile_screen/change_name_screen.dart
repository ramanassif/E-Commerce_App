import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account_screen/widgets/account_details_header.dart';
import 'package:flutter/material.dart';

class ChangeNameProfile extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ChangeNameProfile({Key? key, required this.mapArguments})
      : super(key: key);

  @override
  State<ChangeNameProfile> createState() => _ChangeNameProfileState();
}

class _ChangeNameProfileState extends State<ChangeNameProfile> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

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
                const AccountDetailsHeader(title: 'Name'),
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
                    right: 16.0,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'First Name',
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
                    controller: firstNameController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: 'First Name',
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
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'Last Name',
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
                    controller: lastNameController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: 'Last Name',
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
                    ),
                  ),
                ),
                const SizedBox(height: 320),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'profileScreen');
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
    firstNameController.text = widget.mapArguments['First_name'];
    lastNameController.text = widget.mapArguments['last_name'];
    super.initState();
  }
}
