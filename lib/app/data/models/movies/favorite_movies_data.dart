// To parse this JSON data, do
//
//     final movies = moviesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movies_data.freezed.dart';
part 'favorite_movies_data.g.dart';

@freezed
class FavoriteMoviesData with _$FavoriteMoviesData {
  const factory FavoriteMoviesData({
    int? page,
    List<Result>? results,
    int? totalPages,
    int? totalResults,
  }) = _Movies;

  factory FavoriteMoviesData.fromJson(Map<String, dynamic> json) =>
      _$FavoriteMoviesDataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
