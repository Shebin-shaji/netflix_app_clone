// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

class ListPlayInfoBar extends StatelessWidget {
  const ListPlayInfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: ColorConstants.primaryWhite,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              ),
              SizedBox(width: 35),
      
              //home page play button
      
              Container(
                height: 45,
                width: 110.63,
                decoration: BoxDecoration(
                    color: ColorConstants.playButtonwhite,
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_sharp,
                      color: ColorConstants.primaryBlack,
                      size: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Play',
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )
                  ],
                ),
              ),
      
              SizedBox(width: 35),
              Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: ColorConstants.primaryWhite,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              )
            ],
          );
  }
}