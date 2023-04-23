import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/cubit/popular_movies_cubit.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/widget/popular_movies_body_widget.dart';

import '../../../domain/entities/popular_movies/popular_movies_entity.dart';
import '../../../tools/injectable_setup.dart';

@RoutePage()
class PopularMoviesScreen extends StatefulWidget {
  PopularMoviesScreen({Key? key}) : super(key: key);
  @override
  State<PopularMoviesScreen> createState() => _PopularMoviesScreenState();
}

class _PopularMoviesScreenState extends State<PopularMoviesScreen> {
  final ScrollController _scrollController = ScrollController();
  late PopularMoviesCubit popularMoviesCubit;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    popularMoviesCubit = getIt<PopularMoviesCubit>();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {}
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => popularMoviesCubit
        ..fetchPopularMovies(Localizations.localeOf(context).languageCode),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fav Movies'),
        ),
        body: PopularMoviesBodyWidget(),
      ),
    );
  }
}

class PopularMoviesGridView extends StatefulWidget {
  final List<PopularMovieEntity> movies;

  PopularMoviesGridView({required this.movies});

  @override
  _PopularMoviesGridViewState createState() => _PopularMoviesGridViewState();
}

class _PopularMoviesGridViewState extends State<PopularMoviesGridView> {
  int _currentPage = 1;
  final int _moviesPerPage = 20;

  List<PopularMovieEntity> get _currentMovies {
    final int startIndex = (_currentPage - 1) * _moviesPerPage;
    final int endIndex = startIndex + _moviesPerPage;
    return widget.movies.sublist(startIndex, endIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            padding: EdgeInsets.all(16.0),
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            children: _currentMovies.map((movie) {
              return GestureDetector(
                onTap: () {
                  // Navega a la pantalla de detalles de la película
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      movie.title,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      'Puntuación: ${movie.voteAverage}',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _currentPage == 1
                  ? null
                  : () => setState(() => _currentPage--),
              icon: Icon(Icons.arrow_left),
              disabledColor: Colors.grey,
            ),
            Text(
                'Página $_currentPage de ${widget.movies.length ~/ _moviesPerPage}'),
            IconButton(
              onPressed: _currentPage * _moviesPerPage >= widget.movies.length
                  ? null
                  : () => setState(() => _currentPage++),
              icon: Icon(Icons.arrow_right),
              disabledColor: Colors.grey,
            ),
          ],
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}

/*
*   return Scaffold(
        body: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      builder: (context, state) {
        print(state);
        return state.when(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (movies, hasReachedMax) => GridView.builder(
            controller: _scrollController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: movies.results.length,
            itemBuilder: (context, index) {
              final movie = movies.results[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        'https://lh3.googleusercontent.com/ogw/AOLn63EAkYrfhrtlPsfleShPFn5ZF9oE8tdby9iTW_gV=s64-c-mo',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      movie.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(movie.releaseDate.year.toString()),
                    const SizedBox(height: 8),
                  ],
                ),
              );
            },
          ),
          error: (message) => Center(
              child: Column(
            children: [
              Text(message),
              IconButton(
                  onPressed: () {
                    context.read<GetPopularMoviesCubit>().fetchProducts(
                        Localizations.localeOf(context).languageCode,
                        _currentPage);
                  },
                  icon: Icon(Icons.cloud_download))
            ],
          )),
        );
* */
