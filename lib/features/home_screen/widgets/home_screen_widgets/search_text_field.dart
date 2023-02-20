import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(height: 0),
        hintText: 'Search Product',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
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
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? kPrimaryColor
                : states.contains(MaterialState.error)
                    ? Colors.red
                    : kPrimaryColor),
      ),
    );
  }
}
