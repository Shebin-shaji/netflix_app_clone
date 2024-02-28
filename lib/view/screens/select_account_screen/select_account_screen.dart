import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';

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
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(ImageConstants.box1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shebin',
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(ImageConstants.box2),
                      Text('shebin')
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(ImageConstants.box3),
                      Text('shebin')
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(ImageConstants.box4),
                      Text('shebin')
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConstants.add_profile_icon),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
