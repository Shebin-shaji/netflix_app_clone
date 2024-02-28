import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';

import 'package:netflix_app_clone/core/constants/image_constants.dart';
import 'package:netflix_app_clone/view/screens/select_account_screen/select_account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SelectAccountScreen(),
              ))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Center(
            child: Image.asset(
          ImageConstants.netflixLogo,
          scale: 1,
        )));
  }
}
