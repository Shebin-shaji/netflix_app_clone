// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: double.infinity,
      color: ColorConstants.primaryBlue,
      child: Center(
          child: Text(
        "SETUP",
        style: TextStyle(color: ColorConstants.primaryWhite, fontSize: 17),
      )),
    );
  }
}
