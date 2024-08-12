// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

class Movie {
    int? page;
    List<Result>? results;
    int? totalPages;
    int? totalResults;

    Movie({
        this.page,
        this.results,
        this.totalPages,
        this.totalResults,
    });

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        page: json["page"],
        results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

class Result {
    String? backdropPath;
    int? id;
    String? title;
    String? originalTitle;
    String? overview;
    String? posterPath;
    MediaType? mediaType;
    bool? adult;
    OriginalLanguage? originalLanguage;
    List<int>? genreIds;
    double? popularity;
    DateTime? releaseDate;
    bool? video;
    double? voteAverage;
    int? voteCount;

    Result({
        this.backdropPath,
        this.id,
        this.title,
        this.originalTitle,
        this.overview,
        this.posterPath,
        this.mediaType,
        this.adult,
        this.originalLanguage,
        this.genreIds,
        this.popularity,
        this.releaseDate,
        this.video,
        this.voteAverage,
        this.voteCount,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        backdropPath: json["backdrop_path"],
        id: json["id"],
        title: json["title"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        mediaType: mediaTypeValues.map[json["media_type"]]!,
        adult: json["adult"],
        originalLanguage: originalLanguageValues.map[json["original_language"]]!,
        genreIds: json["genre_ids"] == null ? [] : List<int>.from(json["genre_ids"]!.map((x) => x)),
        popularity: json["popularity"]?.toDouble(),
        releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
        video: json["video"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "id": id,
        "title": title,
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "media_type": mediaTypeValues.reverse[mediaType],
        "adult": adult,
        "original_language": originalLanguageValues.reverse[originalLanguage],
        "genre_ids": genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
        "popularity": popularity,
        "release_date": "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}

enum MediaType {
    MOVIE
}

final mediaTypeValues = EnumValues({
    "movie": MediaType.MOVIE
});

enum OriginalLanguage {
    EN,
    KO,
    TL
}

final originalLanguageValues = EnumValues({
    "en": OriginalLanguage.EN,
    "ko": OriginalLanguage.KO,
    "tl": OriginalLanguage.TL
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
