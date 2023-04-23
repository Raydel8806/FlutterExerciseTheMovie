import '../../../data/models/movie/movie_data.dart';

class MovieEntity {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollection? belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompany>? productionCompanies;
  final List<ProductionCountry>? productionCountries;
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  MovieEntity({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieEntity.fromData(MovieData data) {
    return MovieEntity(
      adult: data.adult,
      backdropPath: data.backdropPath,
      belongsToCollection: data.belongsToCollection,
      budget: data.budget,
      genres: data.genres,
      homepage: data.homepage,
      id: data.id,
      imdbId: data.imdbId,
      originalLanguage: data.originalLanguage,
      originalTitle: data.originalTitle,
      overview: data.overview,
      popularity: data.popularity,
      posterPath: data.posterPath,
      productionCompanies: data.productionCompanies,
      productionCountries: data.productionCountries,
      releaseDate: data.releaseDate,
      revenue: data.revenue,
      runtime: data.runtime,
      spokenLanguages: data.spokenLanguages,
      status: data.status,
      tagline: data.tagline,
      title: data.title,
      video: data.video,
      voteAverage: data.voteAverage,
      voteCount: data.voteCount,
    );
  }
}

extension MovieDataExtension on MovieData {
  MovieEntity toDomainEntity() => MovieEntity.fromData(this);
}
