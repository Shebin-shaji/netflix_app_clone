// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';

class ShareOthersWidget extends StatelessWidget {
  const ShareOthersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 300,
                width: double.infinity,
                color: Color(0xFF1A1A1A),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.message,
                              color: ColorConstants.primaryWhite, size: 25),
                          SizedBox(width: 10),
                          HeadingText(
                              text: ('Tell friends about Netflix.'),
                              fontSize: 25)
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Lorem ipsum dolor sit amet. Non fuga asperiores et odit suscipit ea eveniet adipisci qui nihil laborum.',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Terms&Conditions",
                        style: TextStyle(
                            color: Color.fromARGB(255, 214, 213, 213),
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorConstants.primaryWhite,
                            decorationThickness: 2),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 37,
                            width: 260,
                            color: ColorConstants.primaryBlack,
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 37,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: ColorConstants.primaryWhite,
                            ),
                            child: Center(
                              child: Text(
                                'Copy Link',
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(ImageConstants.whatsappIcon),
                              VerticalDivider(
                                color: Color.fromARGB(255, 214, 213, 213),
                                thickness: 2,
                              ),
                              Image.asset(ImageConstants.facebookIcon),
                              VerticalDivider(
                                color: Color.fromARGB(255, 214, 213, 213),
                                thickness: 2,
                              ),
                              Image.asset(ImageConstants.gmailIcon),
                              VerticalDivider(
                                color: Color.fromARGB(255, 214, 213, 213),
                                thickness: 2,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.more_horiz,
                                    color: ColorConstants.primaryWhite,
                                    size: 35,
                                  ),
                                  Text(
                                    'More',
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
  }
}