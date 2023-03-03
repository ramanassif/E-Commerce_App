import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/core/basics_widgets/form_error.dart';
import 'package:ecommerce_app/features/account_screen/widgets/account_details_header.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ChangePasswordScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool isSelected = false;
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newPasswordAgainController = TextEditingController();

  final passwordFormKey = GlobalKey<FormState>();
  String oldPassword = 'AAAAAA';
  bool wrongPassword = false;
  List<String> errors = ['Oops! Your Password Is Not Correct'];

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
                const AccountDetailsHeader(title: 'Change Password'),
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
                    'Old Password',
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
                  child: Form(
                    key: passwordFormKey,
                    child: TextFormField(
                      controller: oldPasswordController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(height: 0),
                        hintText: '•••••••••••••••••',
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
                        prefixIcon: const Icon(Icons.lock_outline_sharp),
                      ),
                      onEditingComplete: (){
                        if(oldPasswordController.text !=oldPassword){
                          setState(() {
                            wrongPassword = true;
                          });
                        }
                        setState(() {
                          widget.mapArguments['password'] = oldPasswordController.text;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Visibility(
                    visible: wrongPassword ? true : false,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: FormError(
                        errors: errors,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'New Password',
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
                    controller: newPasswordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: '•••••••••••••••••',
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
                      prefixIcon: const Icon(Icons.lock_outline_sharp),
                    ),
                    onEditingComplete: (){
                      setState(() {
                        widget.mapArguments['password'] = oldPasswordController.text;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    top: 16.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    'New Password Again',
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
                    controller: newPasswordAgainController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      hintText: '•••••••••••••••••',
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
                      prefixIcon: const Icon(Icons.lock_outline_sharp),
                    ),
                    onEditingComplete: (){
                      setState(() {
                        widget.mapArguments['password'] = oldPasswordController.text;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 210),
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
                          'password': widget.mapArguments['password'],
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
    super.initState();
  }
}
