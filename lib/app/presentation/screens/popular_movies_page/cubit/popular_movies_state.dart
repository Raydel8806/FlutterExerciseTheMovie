import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';

part 'popular_movies_state.freezed.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  factory PopularMoviesState.initial() = Initial;
  factory PopularMoviesState.loading() = Loading;
  factory PopularMoviesState.loaded(PopularMoviesEntity popularMoviesEntity) =
      Loaded;
  factory PopularMoviesState.error(String message) = Error;
}
