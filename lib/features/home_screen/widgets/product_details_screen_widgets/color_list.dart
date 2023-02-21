import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
  final Color color;
  const ColorList({Key? key,required this.color,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: kLightColor,),
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
