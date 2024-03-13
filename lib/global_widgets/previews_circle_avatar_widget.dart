// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_app_clone/dummy_db.dart';

class PreviewCircleAvatarWidget extends StatelessWidget {
  const PreviewCircleAvatarWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: 102,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          
          image: DecorationImage(
            fit: BoxFit.fill,
              image: NetworkImage(DummyDb.previewListImages[index]))),
    );
  }
}
