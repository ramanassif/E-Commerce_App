import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/basics_widgets/custom_button.dart';
import 'package:ecommerce_app/features/account_screen/widgets/account_details_header.dart';
import 'package:ecommerce_app/features/address_screen/widgets/address_details.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  final Map<String, dynamic> mapArguments;

  const AddressScreen({
    Key? key,
    required this.mapArguments,
  }) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  List<String> addressName = ['Priscekila Priscekila', 'Ahmad Khaidir'];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kWhiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const AccountDetailsHeader(title: 'Address'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEBF0FF),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: addressName.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: AddressDetails(
                      index: index,
                      firstName: addressName[index].split(' ').first,
                      lastName: addressName[index].split(' ').last,
                      isSelected: currentIndex == index ? true : false,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'addAddressScreen',
                        arguments: {
                          'first_name': 'Rama',
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
    );
  }
}
