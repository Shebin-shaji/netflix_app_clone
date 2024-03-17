// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';

import 'package:netflix_app_clone/view/screens/downloads_screen/widgets/custom_button.dart';
import 'package:netflix_app_clone/view/screens/downloads_screen/widgets/find_downloads_button.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryBlack,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstants.primaryBlack,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 45),
                  Text(
                    "Smart  Downloads",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                        text: "Introducing Downloads For You", fontSize: 24),
                    SizedBox(height: 15),
                    Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old",
                        maxLines: 3,
                        style: TextStyle(
                          color: ColorConstants.primaryWhite,
                        )),
                    SizedBox(height: 22),
                    Center(
                        child: CircleAvatar(
                      radius: 100,
                      backgroundColor: ColorConstants.customGrey,
                    )),
                    SizedBox(height: 22),
      
                    //setupbutton
      
                    CustomButton(),
                    SizedBox(height: 50),
      
                    //find some thing to download button
      
                    Center(child: FindDownloadButton())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
