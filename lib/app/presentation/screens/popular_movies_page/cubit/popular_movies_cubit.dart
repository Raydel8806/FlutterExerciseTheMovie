import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/use_cases/get_favorite_movies_use_case.dart';
import 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;
  int page = 1;
  PopularMoviesCubit({
    required GetPopularMoviesUseCase getPopularMoviesUseCase,
  })  : _getPopularMoviesUseCase = getPopularMoviesUseCase,
        super(PopularMoviesState.loading());

  Future<void> fetchPopularMovies(String language) async {
    emit(PopularMoviesState.loading());
    final result = await _getPopularMoviesUseCase.execute(language, page);
    result.fold(
      (failure) {
        failure.maybeWhen(serverError: () {
          emit(PopularMoviesState.error('Server error'));
        }, unauthorized: () {
          emit(PopularMoviesState.error('Access denied'));
        }, notFound: () {
          emit(PopularMoviesState.error('Not found'));
        }, unknownError: (String message) {
          emit(PopularMoviesState.error(message));
        }, orElse: () {
          emit(PopularMoviesState.error('Error: unknown error'));
        });
      },
      (movies) {
        page++;
        emit(PopularMoviesState.loaded(movies));
      },
    );
  }
}
