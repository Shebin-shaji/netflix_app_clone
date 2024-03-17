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
            fit:BoxFit.cover ,
              image: NetworkImage(
                
                  "https://blog.chasejarvis.com/blog/wp-content/uploads/2013/02/ChaseJarvis_Lincoln-620x918.jpg"))),
    );
  }
}
