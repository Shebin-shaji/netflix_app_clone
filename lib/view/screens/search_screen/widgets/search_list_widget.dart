// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:netflix_app_clone/core/constants/color_constants.dart';

class SearchListWidget extends StatelessWidget {
  const SearchListWidget(
      {super.key, required this.filmName, required this.filmBackground});

  final String filmName;
  final String filmBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: ColorConstants.customGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: double.infinity,
            width: 120,
            child: Image.network(filmBackground,fit: BoxFit.cover),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  filmName,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 17),
                ),
                Icon(
                  Icons.play_circle_outline_rounded,
                  color: ColorConstants.primaryWhite,
                  size: 28,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
