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
          child: Image(
              image: NetworkImage(
                  "https://res.cloudinary.com/upwork-cloud/image/upload/c_scale,w_1000/v1700795880/catalog/1600659718750367744/xiry6ufbjttckqxpfzrw.jpg")),
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
