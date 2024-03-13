import 'package:flutter/cupertino.dart';
import 'package:netflix_app_clone/dummy_db.dart';

class MovieListContainerWidget extends StatelessWidget {
  const MovieListContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: 103,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://assets-global.website-files.com/630d4d1c4a462569dd189855/64c19105282a4f4d3e2ba884_2c130933-15f5-4898-a6d6-3d5180b7c2e8%201.webp"))),
    );
  }
}
