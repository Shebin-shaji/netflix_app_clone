// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/dummy_db.dart';
import 'package:netflix_app_clone/global_widgets/accounts_widget.dart';
import 'package:netflix_app_clone/view/screens/bottom_navbar_screen/bottom_navbar_screen.dart';

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
            child: Container(
              height: 460,
              width: 280,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: DummyDb.accountList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 13),
                itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                        (route) => false),
                    child: AccountsWidget(
                      text: DummyDb.accountList[index]['text'],
                      image: DummyDb.accountList[index]['image'],
                    )),
              ),
            ),
          )),
    );
  }
}
