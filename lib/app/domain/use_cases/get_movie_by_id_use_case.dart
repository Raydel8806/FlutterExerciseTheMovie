import 'package:dartz/dartz.dart';
import 'package:flutterexercisethemovie/app/domain/entities/movie/movie_entity.dart';

import '../../data/data_sources/repositories/implementation'
    '/http_movie_repository.dart';
import '../failures/http_common_failure.dart';

class GetMovieByIdUseCase {
  final HttpMovieRepository repository;

  const GetMovieByIdUseCase({required this.repository});

  Future<Either<HttpCommonFailure, MovieEntity>> execute(
      String language, int id) async {
    return await repository.getMovieById(language, id);
  }
}
