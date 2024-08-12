import 'dart:convert';

import 'package:netflix_app_clone/core/constants/constants.dart';
import 'package:netflix_app_clone/model/movie_list.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Something happended");
    }
  }
}
