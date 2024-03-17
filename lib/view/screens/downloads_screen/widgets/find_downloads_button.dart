// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class FindDownloadButton extends StatelessWidget {
  const FindDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.customGrey,
      height: 33,
      width: 293,
      child: Center(
        child: const Text(
          "Find Something To Download",
          style: TextStyle(
              color: ColorConstants.primaryWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
