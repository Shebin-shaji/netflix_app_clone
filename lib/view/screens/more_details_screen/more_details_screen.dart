// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/accounts_widget.dart';
import 'package:netflix_app_clone/global_widgets/heading_text.dart';
import 'package:netflix_app_clone/view/screens/more_details_screen/widgets/custom_text.dart';
import 'package:netflix_app_clone/view/screens/more_details_screen/widgets/share_others_widget.dart';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({super.key});

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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            width: 11,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemCount: DummyDb.accountList2.length,
                      itemBuilder: (context, index) => AccountsWidget(
                          height: 70,
                          width: 70,
                          text: DummyDb.accountList2[index]['text'],
                          image: DummyDb.accountList2[index]['image'])),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: ColorConstants.primaryWhite,
                    size: 15,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Manage Profiles',
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 17),
                  )
                ],
              ),
              SizedBox(height: 15),

              //share others container

              ShareOthersWidget(),
              SizedBox(height: 10),

              Row(
                children: [
                  SizedBox(width: 25),
                  Icon(
                    Icons.done,
                    size: 30,
                    color: ColorConstants.primaryWhite,
                  ),
                  SizedBox(width: 8),
                  CustomText(text: "My List")
                ],
              ),
              SizedBox(height: 4),
              Divider(
                color: ColorConstants.customGrey,
                thickness: 1,
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "App Setting"),
                    SizedBox(height: 8),
                    CustomText(text: "Account"),
                    SizedBox(height: 8),
                    CustomText(text: "Help"),
                    SizedBox(height: 8),
                    CustomText(text: "Sign out")
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
