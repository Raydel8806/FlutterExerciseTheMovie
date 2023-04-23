import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/cubit/popular_movies_cubit.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/popular_movies_page/widget/popular_movies_body_widget.dart';
import 'package:flutterexercisethemovie/l10n/l10n.dart';

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
    final l10n = context.l10n;
    return BlocProvider(
      create: (_) => popularMoviesCubit
        ..fetchPopularMovies(Localizations.localeOf(context).languageCode),
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.screenPopularsFilmsAppBarTitle),
        ),
        body: PopularMoviesBodyWidget(),
      ),
    );
  }
}
