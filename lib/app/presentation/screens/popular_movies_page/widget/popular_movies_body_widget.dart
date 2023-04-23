import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/widget/popular_movie_landscape_item_widget.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';
import '../../../widget/loading_widget.dart';
import '../cubit/popular_movies_cubit.dart';
import '../cubit/popular_movies_state.dart';

class PopularMoviesBodyWidget extends StatefulWidget {
  PopularMoviesBodyWidget({Key? key}) : super(key: key);

  @override
  State<PopularMoviesBodyWidget> createState() =>
      _PopularMoviesBodyWidgetState();
}

class _PopularMoviesBodyWidgetState extends State<PopularMoviesBodyWidget> {
  final List<PopularMovieEntity> popularMoviesEntity = [];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularMoviesCubit, PopularMoviesState>(
      listener: (context, popularMoviesState) {
        if (popularMoviesState is Loading) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Loading...")));
        } else if (popularMoviesState is Loaded &&
            popularMoviesState.popularMoviesEntity.results.isEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('No more Movies.')));
        } else if (popularMoviesState is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(popularMoviesState.message)));
        }
        return;
      },
      builder: (context, popularMoviesState) {
        if (popularMoviesState is Initial ||
            popularMoviesState is Loading && popularMoviesEntity.isEmpty) {
          return LoadingWidget();
        } else if (popularMoviesState is Loaded) {
          popularMoviesEntity
              .addAll(popularMoviesState.popularMoviesEntity.results);
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        } else if (popularMoviesState is Error && popularMoviesEntity.isEmpty) {
          return Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<PopularMoviesCubit>().fetchPopularMovies(
                          Localizations.localeOf(context).languageCode);
                    },
                    icon: Icon(Icons.refresh, size: 46, color: Colors.blue),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    popularMoviesState.message,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }
        return ListView.separated(
          controller: _scrollController
            ..addListener(() {
              if (_scrollController.offset ==
                      _scrollController.position.maxScrollExtent &&
                  popularMoviesState is Loaded) {
                context.read<PopularMoviesCubit>().fetchPopularMovies(
                    Localizations.localeOf(context).languageCode);
              }
            }),
          itemBuilder: (context, index) {
            return PopularMovieLandscapeItemWidget(popularMoviesEntity[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: popularMoviesEntity.length,
        );
      },
    );
  }
}
