// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';

class NotificationMovieDetails extends StatelessWidget {
  const NotificationMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Image(image: AssetImage(ImageConstants.newArrivalmovie1))],
      ),
    );
  }
}
