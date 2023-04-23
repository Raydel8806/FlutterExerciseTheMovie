import 'package:flutterexercisethemovie/app/domain/entities/movie/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';

part 'movie_detail_state.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState.initial() = Initial;
  factory MovieDetailState.loading() = Loading;
  factory MovieDetailState.loaded(MovieEntity movieEntity) = Loaded;
  factory MovieDetailState.error(String message) = Error;
}
