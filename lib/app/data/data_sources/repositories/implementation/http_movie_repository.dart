import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterexercisethemovie/app/domain/entities/movie/movie_entity.dart';
import 'package:http/http.dart' as http;

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';
import '../../../../domain/failures/http_common_failure.dart';
import '../../../../domain/repositories/movie_repository.dart';
import '../../../failure/handle_common_http_errors.dart';
import '../../../models/movie/movie_data.dart';
import '../../../models/movies/favorite_movies_data.dart';

class HttpMovieRepository implements MovieRepositoryBase {
  final http.Client httpClient;
  static const String _tokenPopularMovies = '/popular';

  HttpMovieRepository({
    required this.httpClient,
  });

  get baseUrl => dotenv.env['BASEURL']!;

  @override
  Future<Either<HttpCommonFailure, PopularMoviesEntity>> getPopularMovies(
      String language, int page) async {
    try {
      var queryParameters =
          "?api_key=${dotenv.env['API_KEY']!}&language=$language&page=$page";
      var uri = Uri.parse('$baseUrl$_tokenPopularMovies$queryParameters');
      final headers = {"Accept": "application/json"};
      final response = await httpClient.get(uri, headers: headers);
      if (response.statusCode == 200) {
        final favoriteMoviesData = FavoriteMoviesData.fromJson(
            (json.decode(utf8.decode(response.bodyBytes))));
        return Right(favoriteMoviesData.toDomainEntity());
      } else
        return Left(handleCommonHttpErrors(response));
    } catch (e) {
      return Left(HttpCommonFailure.unknownError(e.toString()));
    }
  }

  @override
  Future<Either<HttpCommonFailure, MovieEntity>> getMovieById(
      String language, int id) async {
    try {
      final headers = {"Accept": "application/json"};
      var queryParameters =
          "/$id?api_key=${dotenv.env['API_KEY']!}&language=$language";
      var uri = Uri.parse('$baseUrl$queryParameters');

      final response = await httpClient.get(uri, headers: headers);
      if (response.statusCode == 200) {
        final favoriteMoviesData =
            MovieData.fromJson((json.decode(utf8.decode(response.bodyBytes))));
        return Right(favoriteMoviesData.toDomainEntity());
      } else
        return Left(handleCommonHttpErrors(response));
    } catch (e) {
      return Left(HttpCommonFailure.unknownError(e.toString()));
    }
  }
}
