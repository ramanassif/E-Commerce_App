import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ShipToDetails extends StatefulWidget {
  final String firstName;
  final bool isSelected;

  const ShipToDetails({
    Key? key,
    required this.firstName,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<ShipToDetails> createState() => _ShipToDetailsState();
}

class _ShipToDetailsState extends State<ShipToDetails> {
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
                widget.firstName,
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
                  const Icon(
                    Icons.delete_outline,
                    color: Colors.grey,
                    size: 30,
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
