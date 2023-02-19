import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff40BFFF);
const kWhiteColor = Color(0xffFFFFFF);
const kLightColor = Color(0xffEBF0FF);
const kSecondaryColor = Color(0xff223263);

//Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidPasswordError = " Oops! Your Password Is Not Correct ";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
