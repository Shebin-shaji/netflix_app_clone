// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';

import 'package:netflix_app_clone/view/screens/home_page/widgets/appbar_text.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

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
                  itemCount: DummyDb.filmList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 110 / 161),
                  itemBuilder: (context, index) => Padding(
                    padding:
                        EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
                    child: Container(
                      child: Image(
                        image: NetworkImage(DummyDb.filmList[index]),
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
