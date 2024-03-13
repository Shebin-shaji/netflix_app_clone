// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/view/screens/coming_soon_screen/widgets/new_arrival_movie_container.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.primaryRed,
                      child: Icon(
                        Icons.notification_add,
                        color: ColorConstants.primaryWhite,
                      )),
                  SizedBox(width: 12),
                  HeadingText(text: "Notification", fontSize: 24)
                ],
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemBuilder: (context, index) => NewArrivalMovieContainer(),
                itemCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
