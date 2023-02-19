import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/app_logo.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/home_screen/home_screen.dart';
import 'package:ecommerce_app/features/login_screen/login_screen.dart';
import 'package:ecommerce_app/core/basics_widgets/form_error.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final registerFormKey = GlobalKey<FormState>();
  final List<String> registerErrors = [];
  String? name;
  String? email;
  String? password;
  String? passwordAgain;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
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
                      'Let\'s Get Started',
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
                      'Create an new account',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Form(
                    key: registerFormKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16.0,
                        ),
                        buildUserNameTextField(),
                        const SizedBox(
                          height: 8.0,
                        ),
                        buildEmailTextField(),
                        const SizedBox(
                          height: 8.0,
                        ),
                        buildPasswordTextField(),
                        const SizedBox(
                          height: 8.0,
                        ),
                        buildPasswordAgainTextField(),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: registerErrors.isEmpty ? false : true,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4.0,
                        left: 16.0,
                      ),
                      child: FormError(
                        errors: registerErrors,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // if (registerFormKey.currentState!.validate()) {
                      //   registerFormKey.currentState!.save();
                      // }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const CustomButton(title: 'Sign Up'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
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
                                text: 'Have a account? '),
                            TextSpan(
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                              text: 'Sign In',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildUserNameTextField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(height: 0),
        hintText: 'Full Name',
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
        prefixIcon: const Icon(Icons.person_2_outlined),
        prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? kPrimaryColor
                : states.contains(MaterialState.error)
                    ? Colors.red
                    : Colors.grey),
      ),
      onSaved: (newValue) => name = newValue,
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
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
        if (value.isNotEmpty && registerErrors.contains(kEmailNullError)) {
          setState(() {
            registerErrors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            registerErrors.contains(kInvalidEmailError)) {
          setState(() {
            registerErrors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !registerErrors.contains(kEmailNullError)) {
          setState(() {
            registerErrors.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !registerErrors.contains(kInvalidEmailError)) {
          setState(() {
            registerErrors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordTextField() {
    return TextFormField(
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
        if (value.isNotEmpty && registerErrors.contains(kPassNullError)) {
          setState(() {
            registerErrors.remove(kPassNullError);
          });
        } else if (value.length >= 8 &&
            registerErrors.contains(kShortPassError)) {
          setState(() {
            registerErrors.remove(kShortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !registerErrors.contains(kPassNullError)) {
          setState(() {
            registerErrors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            !registerErrors.contains(kShortPassError)) {
          setState(() {
            registerErrors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordAgainTextField() {
    return TextFormField(
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        errorStyle: const TextStyle(height: 0),
        hintText: 'Password Again',
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
      onSaved: (newValue) => passwordAgain = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && registerErrors.contains(kPassNullError)) {
          setState(() {
            registerErrors.remove(kPassNullError);
          });
        } else if (value.length >= 8 &&
            registerErrors.contains(kShortPassError)) {
          setState(() {
            registerErrors.remove(kShortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !registerErrors.contains(kPassNullError)) {
          setState(() {
            registerErrors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            !registerErrors.contains(kShortPassError)) {
          setState(() {
            registerErrors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
    );
  }
}
