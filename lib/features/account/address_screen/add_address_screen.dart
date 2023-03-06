import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AddAddressScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const AddAddressScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  List<String> countriesList = [
    'United States',
    'United Kingdom',
    'Afghanistan',
    'Albania',
    'American Samoa'
  ];
  bool isSelected = false;
  bool wrong = false;
  int currentIndex = 0;
  TextEditingController countryController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController stressAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    countryController.text = countriesList[0];
    firstNameController.text = widget.mapArguments['first_name'] ?? "";
    lastNameController.text = widget.mapArguments['last_name'] ?? "";
    stressAddressController.text = widget.mapArguments['stress_address'] ?? "";
    cityController.text = widget.mapArguments['city'] ?? "";
    stateController.text = widget.mapArguments['state'] ?? "";
    zipCodeController.text = widget.mapArguments['zip_code'] ?? "";
    phoneNumberController.text = widget.mapArguments['phone_number'] ?? "";
    super.initState();
  }

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
                const AccountDetailsHeader(title: 'Add Address'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xffEBF0FF),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Country or region',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: kSecondaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: TextField(
                            readOnly: true,
                            controller: countryController,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              errorStyle: const TextStyle(height: 0),
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
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                  });
                                },
                                child: Transform.rotate(
                                  angle: -math.pi / 2,
                                  child: const Icon(
                                    CupertinoIcons.back,
                                    color: Colors.grey,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isSelected ? true : false,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 240,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                border: Border.all(color: kLightColor),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 16,
                                ),
                                child: ListView.builder(
                                  itemCount: countriesList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 26.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                          countryController.text =
                                              countriesList[index];
                                        });
                                      },
                                      child: Text(
                                        countriesList[index],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: currentIndex == index
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          color: currentIndex == index
                                              ? kPrimaryColor
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
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
                        TextFormField(
                          controller: firstNameController,
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
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
                        TextFormField(
                          controller: lastNameController,
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Street Address',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: stressAddressController,
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Street Address 2 (Optional)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'City',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: cityController,
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'State/Province/Region',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: stateController,
                          keyboardType: TextInputType.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Zip Code',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: zipCodeController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: wrong ? true : false,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Please Fill The Form',
                                style: TextStyle(
                                  color: Color(0xffFB7181),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 24.0,
                            bottom: 12.0,
                          ),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(height: 0),
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: wrong ? true : false,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Please Fill The Form',
                              style: TextStyle(
                                color: Color(0xffFB7181),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (firstNameController.text.isEmpty ||
                                    lastNameController.text.isEmpty ||
                                    stressAddressController.text.isEmpty ||
                                    cityController.text.isEmpty ||
                                    stateController.text.isEmpty ||
                                    zipCodeController.text.isEmpty ||
                                    phoneNumberController.text.isEmpty) {
                                  wrong = true;
                                }
                              });
                            },
                            child: const CustomButton(
                              title: 'Add Address',
                            ),
                          ),
                        ),
                      ],
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
}
