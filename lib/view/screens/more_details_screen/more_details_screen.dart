// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/accounts_widget.dart';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryBlack,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstants.primaryBlack,
            body: SizedBox(
              height: 350,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 5,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyDb.accountList2.length,
                  itemBuilder: (context, index) => AccountsWidget(
                      height: 70,
                      width: 70,
                      text: DummyDb.accountList2[index]['text'],
                      image: DummyDb.accountList2[index]['image'])),
            )),
      ),
    );
  }
}
