// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/color_constants.dart';
import 'package:netflix_app_clone/core/constants/image_constants.dart';

class NewArrivalMovieContainer extends StatelessWidget {
  const NewArrivalMovieContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      color: ColorConstants.searchBarBackground,
      height: 75,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              
              height: 55,
              width: 113,
              child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageConstants.newArrivalmovie1)),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Arrival',
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 14),
                ),
                Text(
                  'El Chapo',
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 14),
                ),
                Text('Nov 6',style: TextStyle(fontSize: 7,color: Color(0xFFFFFFFF)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
