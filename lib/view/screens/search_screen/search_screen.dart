// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/view/screens/search_screen/widgets/search_list_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

 

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
              Container(
                color: ColorConstants.customGrey,
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(
                      Icons.search,
                      color: ColorConstants.searchBarIcon,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search for a show,movie,genre,e.t.c",
                          hintStyle: TextStyle(
                            color: ColorConstants.searchBarIcon,
                          ),
                          border: InputBorder.none),
                      style: TextStyle(color: ColorConstants.primaryWhite),
                    )),
                    SizedBox(width: 20),
                    Icon(Icons.mic, color: ColorConstants.searchBarIcon),
                    SizedBox(width: 30)
                  ],
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: HeadingText(text: "Top Searches", fontSize: 25),
              ),
              SizedBox(height: 23),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => SearchListWidget(
                        filmName: DummyDb.searchList[index]["filmName"],
                        filmBackground: DummyDb.searchList[index]
                            ["filmBackground"]),
                    separatorBuilder: (context, index) => SizedBox(height: 2),
                    itemCount: DummyDb.searchList.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
