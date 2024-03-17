import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class DotIcon extends StatelessWidget {
  const DotIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstants.primaryWhite,
      ),
    );
  }
}
