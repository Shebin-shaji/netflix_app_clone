// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class ContinueWatchingContainerWidget extends StatelessWidget {
  const ContinueWatchingContainerWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 161,
          width: 103,
          child: const Image(
              image: NetworkImage(
                  "https://stat4.bollywoodhungama.in/wp-content/uploads/2024/01/The-Beekeeper-English-306x393.jpg")),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 40,
            width: 103,
            color: Color(0xFF121212),
            child: Row(
              children: [
                SizedBox(width: 8),
                Icon(
                  Icons.info_outline,
                  color: ColorConstants.primaryWhite,
                  size: 30,
                ),
                SizedBox(width: 27),
                Icon(
                  Icons.more_vert,
                  color: ColorConstants.primaryWhite,
                  size: 30,
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        )
      ],
    );
  }
}
