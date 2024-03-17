// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(color: ColorConstants.primaryWhite, fontSize: 22));
  }
}
