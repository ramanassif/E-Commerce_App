import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/app_logo.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/home_Indicator.dart';
import 'package:ecommerce_app/core/basics_widgets/form_error.dart';
import 'package:ecommerce_app/features/home_screen/home_screen.dart';
import 'package:ecommerce_app/features/login_screen/widgets/login_way.dart';
import 'package:ecommerce_app/features/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final signInFormKey = GlobalKey<FormState>();
  final List<String> signInErrors = [];
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: Container(
            color: kWhiteColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                const AppLogo(
                  firstColor: kPrimaryColor,
                  secondColor: kWhiteColor,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Welcome to Lafyuu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Sign in to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Center(
                  child: Form(
                    key: signInFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildEmailTextField(),
                        buildPasswordTextField(),
                        Visibility(
                          visible: signInErrors.isEmpty ? false : true,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 4.0,
                              left: 16.0,
                            ),
                            child: FormError(
                              errors: signInErrors,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // if (signInFormKey.currentState!.validate()) {
                      //   signInFormKey.currentState!.save();
                      // }
                      Navigator.pushNamed(
                          context,
                          'homeScreen');
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                      child: CustomButton(
                        title: 'Sign in',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      SizedBox(
                        width: 137,
                        child: Divider(
                          thickness: 2,
                          color: Color(0xffEBF0FF),
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 137,
                        child: Divider(
                          thickness: 2,
                          color: Color(0xffEBF0FF),
                        ),
                      ),
                    ],
                  ),
                ),
                const LoginWay(
                  wayName: 'Login with Google',
                  wayImage: 'assets/images/google.png',
                ),
                const LoginWay(
                  wayName: 'Login with facebook',
                  wayImage: 'assets/images/facebook.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          'registerScreen');
                    },
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                text: 'Don\'t have a account? ',),
                            TextSpan(
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                              text: 'Register',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: signInErrors.isEmpty
                        ? 60
                        : signInErrors.length == 1
                            ? 40
                            : 20,
                    left: 115,
                    right: 115,
                  ),
                  child: const HomeIndicator(
                    color: Color(0xffD1D6E8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: 8.0,
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          color: Colors.grey,
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
          prefixIcon: const Icon(Icons.email_outlined),
          prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? kPrimaryColor
                  : states.contains(MaterialState.error)
                      ? Colors.red
                      : Colors.grey),
        ),
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && signInErrors.contains(kEmailNullError)) {
            setState(() {
              signInErrors.remove(kEmailNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              signInErrors.contains(kInvalidEmailError)) {
            setState(() {
              signInErrors.remove(kInvalidEmailError);
            });
          }
          return;
        },
        validator: (value) {
          if (value!.isEmpty && !signInErrors.contains(kEmailNullError)) {
            setState(() {
              signInErrors.add(kEmailNullError);
            });
            return '';
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !signInErrors.contains(kInvalidEmailError)) {
            setState(() {
              signInErrors.add(kInvalidEmailError);
            });
            return '';
          }
          return null;
        },
      ),
    );
  }

  Widget buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          hintText: 'Password',
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
          prefixIcon: const Icon(Icons.lock_outlined),
          prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? kPrimaryColor
                  : states.contains(MaterialState.error)
                      ? Colors.red
                      : Colors.grey),
        ),
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && signInErrors.contains(kPassNullError)) {
            setState(() {
              signInErrors.remove(kPassNullError);
            });
          } else if (value.length >= 8 &&
              signInErrors.contains(kShortPassError)) {
            setState(() {
              signInErrors.remove(kShortPassError);
            });
          }
          return;
        },
        validator: (value) {
          if (value!.isEmpty && !signInErrors.contains(kPassNullError)) {
            setState(() {
              signInErrors.add(kPassNullError);
            });
            return '';
          } else if (value.length < 8 &&
              !signInErrors.contains(kShortPassError)) {
            setState(() {
              signInErrors.add(kShortPassError);
            });
            return '';
          }
          return null;
        },
      ),
    );
  }
}
