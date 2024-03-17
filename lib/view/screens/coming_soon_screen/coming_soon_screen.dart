// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/view/screens/coming_soon_screen/widgets/new_arrival_movie_container.dart';
import 'package:netflix_app_clone/view/screens/coming_soon_screen/widgets/notification_movie_details.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryBlack,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstants.primaryBlack,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 12,
                          backgroundColor: ColorConstants.primaryRed,
                          child: Icon(
                            Icons.notifications,
                            color: ColorConstants.primaryWhite,
                          )),
                      SizedBox(width: 12),
                      HeadingText(text: "Notification", fontSize: 24)
                    ],
                  ),
                ),
                SizedBox(height: 8),

                //new arrival movie container

                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => NewArrivalMovieContainer(
                      movieName: DummyDb.newArrivallist[index]["movieName"],
                      movieBackground: DummyDb.newArrivallist[index]
                          ["movieBackground"],
                    ),
                    itemCount: 2,
                  ),
                ),
                SizedBox(height: 10),

                //movie poster and description container

                SizedBox(
                    height: 1400,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => NotificationMovieDetails(
                        movieName: DummyDb.notificationMovieList[index]
                            ['movieName'],
                        movieBackground: DummyDb.notificationMovieList[index]
                            ['movieBackground'],
                      ),
                      itemCount: DummyDb.notificationMovieList.length,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
