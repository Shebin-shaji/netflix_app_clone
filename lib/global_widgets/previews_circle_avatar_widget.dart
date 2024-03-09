// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/dummy_db.dart';

class PreviewCircleAvatarWidget extends StatelessWidget {
  const PreviewCircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 102,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://www.digitaltrends.com/wp-content/uploads/2023/11/blQaj6biyBMLo34cuFKKwbgjIBz.jpg?p=1#038;p=1.jpg")),
    );
  }
}
