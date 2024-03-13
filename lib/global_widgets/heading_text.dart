import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class HeadingText extends StatelessWidget {
  HeadingText({super.key, required this.text, required this.fontSize});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: ColorConstants.primaryWhite,
          fontWeight: FontWeight.bold,
          fontSize: fontSize),
    );
  }
}
