// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/view/screens/home_page/widgets/appbar_text.dart';

class MyListPage extends StatelessWidget {
  MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryBlack,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Column(
          children: [
            Row(
              children: [
                Image.asset(ImageConstants.netflixAppIcon),
                SizedBox(width: 14),
                AppBarText(text: 'My List'),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_drop_down,
                  color: ColorConstants.primaryWhite,
                  size: 29,
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 110 / 161),
                  itemBuilder: (context, index) => Padding(
                    padding:
                        EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
                    child: Container(
                      child: Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/236x/5e/c1/77/5ec177c368af041ddf5834a22e0a7803.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
