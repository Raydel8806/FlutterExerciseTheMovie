import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexercisethemovie/app/domain/use_cases/get_movie_by_id_use_case.dart';

import 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  final GetMovieByIdUseCase _getMovieByIdUseCase;

  MovieDetailCubit({
    required GetMovieByIdUseCase getMovieByIdUseCase,
  })  : _getMovieByIdUseCase = getMovieByIdUseCase,
        super(MovieDetailState.initial());

  Future<void> fetchDetailedMovieById(String language, int id) async {
    emit(MovieDetailState.loading());
    final result = await _getMovieByIdUseCase.execute("$language", id);
    result.fold(
      (failure) {
        failure.maybeWhen(serverError: () {
          emit(MovieDetailState.error('Server error'));
        }, unauthorized: () {
          emit(MovieDetailState.error('Access denied'));
        }, notFound: () {
          emit(MovieDetailState.error('Not found'));
        }, unknownError: (String message) {
          emit(MovieDetailState.error(message));
        }, orElse: () {
          emit(MovieDetailState.error('Error: unknown error'));
        });
      },
      (movies) {
        emit(MovieDetailState.loaded(movies));
      },
    );
  }
}
