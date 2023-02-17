import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row formErrorText({String? error}) {
    return Row(
      children: [
        Text(
          error!,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.red,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
