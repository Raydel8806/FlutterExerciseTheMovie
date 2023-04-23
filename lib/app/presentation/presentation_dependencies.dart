import 'package:flutterexercisethemovie/app/domain/use_cases/get_favorite_movies_use_case.dart';
import 'package:flutterexercisethemovie/app/domain/use_cases/get_movie_by_id_use_case.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/movie_detail_page/cubit/movie_detail_cubit.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/cubit/popular_movies_cubit.dart';
import 'package:get_it/get_it.dart';

class PresentationDependencies {
  static void register(GetIt getIt) {
    getIt.registerFactory(
      () => MovieDetailCubit(
        getMovieByIdUseCase: getIt<GetMovieByIdUseCase>(),
      ),
    );
    getIt.registerLazySingleton(
      () => PopularMoviesCubit(
          getPopularMoviesUseCase: getIt<GetPopularMoviesUseCase>()),
    );
  }
}
