// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/continue_watching_container_widget.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/global_widgets/list_play_info_bar.dart';
import 'package:netflix_app_clone/global_widgets/movie_list_container_widget.dart';
import 'package:netflix_app_clone/global_widgets/previews_circle_avatar_widget.dart';
import 'package:netflix_app_clone/view/screens/bottom_navbar_screen/bottom_navbar_screen.dart';

import 'package:netflix_app_clone/view/screens/home_page/widgets/appbar_text.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

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
                    ImageConstants.PagesBackground,
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
                      Row(
                        children: [
                          AppBarText(text: "Movies"),
                          Icon(
                            Icons.arrow_drop_down,
                            color: ColorConstants.primaryWhite,
                            size: 29,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          AppBarText(text: "All Genre"),
                          Icon(
                            Icons.arrow_drop_down,
                            color: ColorConstants.primaryWhite,
                            size: 29,
                          )
                        ],
                      ),
                      SizedBox(width: 20)
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
                              border: Border.all(
                                  color: ColorConstants.primaryWhite)),
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

                //preview movies list

                children: [
                  HeadingText(
                    text: "Previews",
                    fontSize: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            PreviewCircleAvatarWidget(
                              index: index,
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        itemCount: DummyDb.previewListImages.length),
                  ),

                  HeadingText(text: "Continue watching Emerald", fontSize: 22),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 130,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            ContinueWatchingContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),

                  //trending now movie list

                  SizedBox(height: 8),
                  HeadingText(text: "Popular On Netflix", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(
                              index: index,
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "Trending Now", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "Top 10 in Nigeria Today", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "My List", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "African Movies", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "Mollywood Movies And TV", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "Netflix Originals", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 20),
                  HeadingText(text: "Watch it again", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "New Releases", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "TV Thrillers and Mysteries", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
                  ),
                  SizedBox(height: 8),
                  HeadingText(text: "US TV Shows", fontSize: 20),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            MovieListContainerWidget(index: index),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                        itemCount: DummyDb.filmList.length),
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
