// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/view/screens/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_app_clone/view/screens/home_page/home_page.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryBlack,
          flexibleSpace: Center(
            child: Image.asset(
              ImageConstants.netflixLogo,
              scale: 1.5,
            ),
          ),
          actions: [
            Image.asset(ImageConstants.pencilIcon),
            SizedBox(width: 20)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //box 1
                  InkWell(
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                        (route) => false),
                    child: Column(
                      children: [
                        Image.asset(ImageConstants.box1),
                        SizedBox(height: 10),
                        Text(
                          'Shebin',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 25),

                  //box 1
                  Column(
                    children: [
                      Image.asset(ImageConstants.box2),
                      SizedBox(height: 3),
                      Text(
                        'Joel',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //box 3
                  Column(
                    children: [
                      Image.asset(ImageConstants.box3),
                      SizedBox(height: 10),
                      Text(
                        'Albi',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(width: 25),

                  //box 4
                  Column(
                    children: [
                      Image.asset(ImageConstants.box4),
                      SizedBox(height: 10),
                      Text(
                        'Brijith',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //box 5
                  Column(
                    children: [
                      Image.asset(ImageConstants.addProfileIcon),
                      SizedBox(height: 10),
                      Text(
                        'Add profile',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(width: 110)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
