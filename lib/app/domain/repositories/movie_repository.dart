import 'package:dartz/dartz.dart';

import '../entities/movie/movie_entity.dart';
import '../entities/popular_movies/popular_movies_entity.dart';
import '../failures/http_common_failure.dart';

abstract class MovieRepositoryBase {
  Future<Either<HttpCommonFailure, PopularMoviesEntity>> getPopularMovies(
      String language, int page);
  Future<Either<HttpCommonFailure, MovieEntity>> getMovieById(
      String language, int id);
}
