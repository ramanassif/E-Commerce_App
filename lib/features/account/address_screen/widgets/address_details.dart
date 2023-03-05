import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  final int index;
  final String firstName;
  final String lastName;
  final bool isSelected;

  const AddressDetails({
    Key? key,
    required this.index,
    required this.firstName,
    required this.lastName,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  List<String> city = ['Richardson', 'Richardson'];
  List<String> state = ['Oregon', 'Oregon'];
  List<String> stressAddress = ['7021 Parker Rd undefined', '70 Rd undefined'];
  List<String> zipCode = ['57793', '57796'];
  List<String> phoneNumber = ['(316) 555-0116', '(316) 444-0119'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 240,
        decoration: BoxDecoration(
          border: Border.all(
              color: widget.isSelected ? kPrimaryColor : kLightColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.firstName} ${widget.lastName}',
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '+99 1234567890',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'addAddressScreen',
                          arguments: {
                            'first_name': widget.firstName,
                            'last_name': widget.lastName,
                            'stress_address': widget.index == 0
                                ? stressAddress[0]
                                : stressAddress[1],
                            'city': widget.index == 0 ? city[0] : city[1],
                            'state': widget.index == 0 ? state[0] : state[1],
                            'zip_code':
                                widget.index == 0 ? zipCode[0] : zipCode[1],
                            'phone_number': widget.index == 0
                                ? phoneNumber[0]
                                : phoneNumber[1],
                          });
                    },
                    child: Container(
                      width: 77,
                      height: 57,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 5.0,
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'deleteAddressScreen');
                    },
                    child: const Icon(
                      Icons.delete_outline,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
