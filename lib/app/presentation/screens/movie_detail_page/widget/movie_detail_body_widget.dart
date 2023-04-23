import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterexercisethemovie/app/presentation/extensions.dart';
import 'package:flutterexercisethemovie/l10n/l10n.dart';

import '../../../../domain/entities/movie/movie_entity.dart';
import '../../../widget/loading_widget.dart';
import '../cubit/movie_detail_cubit.dart';
import '../cubit/movie_detail_state.dart';

class MoviesDetailBodyWidget extends StatefulWidget {
  MoviesDetailBodyWidget({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<MoviesDetailBodyWidget> createState() => _MoviesDetailBodyWidgetState();
}

class _MoviesDetailBodyWidgetState extends State<MoviesDetailBodyWidget> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<MovieDetailCubit, MovieDetailState>(
      listener: (context, movieDetailState) {
        if (movieDetailState is Loading) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Loading...")));
        } else if (movieDetailState is Error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(movieDetailState.message)));
        }
        return;
      },
      builder: (context, movieDetailState) {
        return movieDetailState.when(
            initial: () => LoadingWidget(),
            loading: () => LoadingWidget(),
            loaded: (MovieEntity movieEntity) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Image.network(
                            '${dotenv.env['BASE_URL_IMAGES']!}${dotenv.env['IMAGE_SIZE_HIGH']!}/${movieEntity.backdropPath ?? movieEntity.posterPath}',
                            //'${dotenv.env['BASE_URL_IMAGES']!}${dotenv.env['IMAGE_SIZE_LOW_EXTREME']!}/${movie.backdropPath ?? movie.posterPath}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              movieEntity.title ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            l10n.moviesDetailBodyWidgetOverview,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            movieEntity.overview ?? '',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 16),
                          Text(
                            l10n.popularMovieLandscapeItemWidgetReleaseDate,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${movieEntity.releaseDate?.toStringDate()}',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 16),
                          Text(
                            l10n.moviesDetailBodyWidgetGenders,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: movieEntity.genres
                                    ?.map(
                                      (genre) => Chip(
                                        label: Text(genre.name ?? ''),
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.2),
                                      ),
                                    )
                                    .toList() ??
                                [],
                          ),
                          SizedBox(height: 16),
                          Text(
                            l10n.moviesDetailWidgetPageProductionCompanies,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: movieEntity.productionCompanies
                                    ?.map(
                                      (company) => Chip(
                                        label: Text(company.name ?? ''),
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.2),
                                      ),
                                    )
                                    .toList() ??
                                [],
                          ),
                          SizedBox(height: 16),
                          Text(
                            l10n.moviesDetailWidgetPageBelongsToCollection,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${movieEntity.belongsToCollection?.name ?? 'No'}',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (String error) => Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<MovieDetailCubit>()
                                .fetchDetailedMovieById(
                                    Localizations.localeOf(context)
                                        .languageCode,
                                    widget.id);
                          },
                          icon: Icon(Icons.refresh, size: 46),
                        ),
                        const SizedBox(height: 15),
                        Text(error, textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ));
      },
    );
  }
}
