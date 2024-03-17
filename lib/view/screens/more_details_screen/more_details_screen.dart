// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryBlack,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstants.primaryBlack,
        ),
      ),
    );
  }
}
