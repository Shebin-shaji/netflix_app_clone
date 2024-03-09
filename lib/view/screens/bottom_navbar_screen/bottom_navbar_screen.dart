// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/view/screens/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_app_clone/view/screens/downloads_screen/download_screen.dart';
import 'package:netflix_app_clone/view/screens/home_page/home_page.dart';
import 'package:netflix_app_clone/view/screens/more_details_screen/more_details_screen.dart';
import 'package:netflix_app_clone/view/screens/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> ScreenList = [
    HomePage(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadsScreen(),
    MoreDetailsScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            backgroundColor: Color(0xFF121212),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.upcoming_outlined,
                  size: 30,
                ),
                label: "Coming Soon",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                  size: 30,
                ),
                label: "Downloads",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  size: 30,
                ),
                label: "More",
              ),
            ],
            selectedItemColor: ColorConstants.primaryWhite,
            unselectedItemColor: Color(0xFF8C8787)));
  }
}
