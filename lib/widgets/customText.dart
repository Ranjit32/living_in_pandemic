import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  CustomText({this.size, @required this.text, this.fontWeight, this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 14,
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
