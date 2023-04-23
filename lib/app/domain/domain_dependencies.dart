import 'package:flutterexercisethemovie/app/data/data_sources/repositories'
    '/implementation/http_movie_repository.dart';
import 'package:flutterexercisethemovie/app/domain/use_cases/get_favorite_movies_use_case.dart';
import 'package:flutterexercisethemovie/app/domain/use_cases/get_movie_by_id_use_case.dart';
import 'package:get_it/get_it.dart';

class DomainDependencies {
  static void register(GetIt getIt) {
    getIt.registerFactory(
      () => GetPopularMoviesUseCase(
        repository: getIt<HttpMovieRepository>(),
      ),
    );
    getIt.registerFactory(
      () => GetMovieByIdUseCase(
        repository: getIt<HttpMovieRepository>(),
      ),
    );
  }
}
