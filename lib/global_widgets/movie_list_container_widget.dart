import 'package:flutter/cupertino.dart';
import 'package:netflix_app_clone/dummy_db.dart';

class MovieListContainerWidget extends StatelessWidget {
  MovieListContainerWidget({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: 103,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(DummyDb.filmList[index]),
        ),
      ),
    );
  }
}
