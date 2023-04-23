import 'package:dartz/dartz.dart';

import '../../data/data_sources/repositories/implementation'
    '/http_movie_repository.dart';
import '../entities/popular_movies/popular_movies_entity.dart';
import '../failures/http_common_failure.dart';

class GetPopularMoviesUseCase {
  final HttpMovieRepository repository;

  const GetPopularMoviesUseCase({required this.repository});

  Future<Either<HttpCommonFailure, PopularMoviesEntity>> execute(
      String language, int page) async {
    return await repository.getPopularMovies(language, page);
  }
}
