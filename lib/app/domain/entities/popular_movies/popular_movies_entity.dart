import '../../../data/models/movies/favorite_movies_data.dart';

class PopularMovieEntity {
  final bool adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String? posterPath;
  final DateTime releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  PopularMovieEntity({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory PopularMovieEntity.fromResult(Result result) {
    return PopularMovieEntity(
      adult: result.adult ?? false,
      backdropPath: result.backdropPath,
      genreIds: result.genreIds ?? [],
      id: result.id ?? 0,
      originalLanguage: result.originalLanguage ?? '',
      originalTitle: result.originalTitle ?? '',
      overview: result.overview ?? '',
      popularity: result.popularity ?? 0.0,
      posterPath: result.posterPath,
      releaseDate: result.releaseDate ?? DateTime.now(),
      title: result.title ?? '',
      video: result.video ?? false,
      voteAverage: result.voteAverage ?? 0.0,
      voteCount: result.voteCount ?? 0,
    );
  }
}

class PopularMoviesEntity {
  final int page;
  final List<PopularMovieEntity> results;
  final int totalPages;
  final int totalResults;

  PopularMoviesEntity({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PopularMoviesEntity.fromData(FavoriteMoviesData data) {
    final results = data.results
            ?.map((result) => PopularMovieEntity.fromResult(result))
            .toList() ??
        [];

    return PopularMoviesEntity(
      page: data.page ?? 0,
      results: results,
      totalPages: data.totalPages ?? 0,
      totalResults: data.totalResults ?? 0,
    );
  }
}

extension FavoriteMoviesDataExtensions on FavoriteMoviesData {
  PopularMoviesEntity toDomainEntity() {
    return PopularMoviesEntity.fromData(this);
  }
}
