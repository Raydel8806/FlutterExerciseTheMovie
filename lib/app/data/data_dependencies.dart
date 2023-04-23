import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'data_sources/repositories/implementation/http_movie_repository.dart';

class DataDependencies {
  static void register(GetIt getIt) {
    getIt.registerLazySingleton(
      () => http.Client(),
    );
    getIt.registerFactory(
      () => HttpMovieRepository(
        httpClient: getIt.get(),
      ),
    );
  }
}
