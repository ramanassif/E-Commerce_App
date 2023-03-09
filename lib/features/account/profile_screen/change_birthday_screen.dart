import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/account_screen/widgets/account_details_header.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChangeBirthDayScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const ChangeBirthDayScreen({Key? key, required this.mapArguments})
      : super(key: key);

  @override
  State<ChangeBirthDayScreen> createState() => _ChangeBirthDayScreenState();
}

class _ChangeBirthDayScreenState extends State<ChangeBirthDayScreen> {
  bool isSelected = false;
  DateTime date = DateTime.now();

  pickedDateFun() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        String formattedDate = DateFormat('yyyy-MM-dd').format(date);
        widget.mapArguments['birthday'] = formattedDate;
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            color: kWhiteColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const AccountDetailsHeader(title: 'Birthday'),
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
                    'Your Birthday',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: isSelected ? kPrimaryColor : kLightColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 22,
                          top: 13,
                          bottom: 13,
                        ),
                        child: Row(
                          children: [
                            Text(
                              widget.mapArguments['birthday'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: pickedDateFun,
                              child: const Icon(
                                Icons.calendar_today,
                                color: Colors.grey,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
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
                          'birthday': widget.mapArguments['birthday'],
                        },
                      );
                    },
                    child: const CustomButton(
                      title: 'Save',
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
