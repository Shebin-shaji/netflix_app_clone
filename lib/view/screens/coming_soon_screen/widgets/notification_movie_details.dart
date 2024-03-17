// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/view/screens/coming_soon_screen/widgets/dot_icon.dart';

class NotificationMovieDetails extends StatelessWidget {
  const NotificationMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 195,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,

                  //movie poster
                  
                  image: NetworkImage(
                      "https://www.webfx.com/wp-content/uploads/2021/10/DI_dark_castle_preview.jpg"))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.notifications,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    'Remind Me',
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 13),
                  )
                ],
              ),
              SizedBox(width: 38),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: ColorConstants.primaryWhite,
                    size: 30,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 13),
                  )
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Seoson 1 Coming December 14',
                  style: TextStyle(color: ColorConstants.descriptionTextColor),
                ),
                SizedBox(height: 12),

                //movie name

                HeadingText(text: "Castle and Castle", fontSize: 25),
                SizedBox(height: 12),

                //movie description

                Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                    style: TextStyle(
                      color: ColorConstants.descriptionTextColor,
                    )),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(text: 'Steamy', fontSize: 11),
                    DotIcon(),
                    HeadingText(text: 'Slopy', fontSize: 11),
                    DotIcon(),
                    HeadingText(text: 'Slow Burn', fontSize: 11),
                    DotIcon(),
                    HeadingText(text: 'Succesfull', fontSize: 11),
                    DotIcon(),
                    HeadingText(text: 'Teen', fontSize: 11),
                    DotIcon(),
                    HeadingText(text: 'Mystery', fontSize: 11),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
