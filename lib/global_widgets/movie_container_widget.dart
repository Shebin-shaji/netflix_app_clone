// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/core/constants/constants.dart';

class MovieContainerWidget extends StatelessWidget {
  const MovieContainerWidget({super.key, required this.snapshot});
 final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 161,
                width: 103,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage('${Constants.imagePath}${snapshot.data[index].posterPath}'),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 8,
              ),
          itemCount: 10),
    );
  }
}
