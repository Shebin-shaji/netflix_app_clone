// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';

import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/global_widgets/list_play_info_bar.dart';
import 'package:netflix_app_clone/global_widgets/previews_circle_avatar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 415,
                  width: 424.05,
                  child: Image.asset(
                    ImageConstants.homePageBackground,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImageConstants.netflixAppIcon,
                      ),
                      Text("TV Shows",
                          style: TextStyle(
                              color: ColorConstants.primaryWhite, fontSize: 22)),
                      Text("Movies",
                          style: TextStyle(
                              color: ColorConstants.primaryWhite, fontSize: 22)),
                      Text("My List",
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 22)),
                    ],
                  ),
                ),
                Positioned(
                    left: 120,
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorConstants.primaryWhite)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'TOP',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 3,
                                    color: ColorConstants.primaryWhite),
                              ),
                              Text('10',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 5,
                                      color: ColorConstants.primaryWhite))
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '#2 in Nigerea today',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListPlayInfoBar(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              
               //preview list
              
                children: [
                  HeadingText(text: "Previews"),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            PreviewCircleAvatarWidget(),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: 6),
                  ),
                  HeadingText(text: "Continue watching Emerald"),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            PreviewCircleAvatarWidget(),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: 6),
                  ),
                  
                ],
                
              ),
            ),
             
          ],
        ),
      ),
      
    );
  }
}
