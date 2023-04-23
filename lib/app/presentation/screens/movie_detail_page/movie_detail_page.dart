import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../tools/injectable_setup.dart';
import 'cubit/movie_detail_cubit.dart';
import 'widget/movie_detail_body_widget.dart';

@RoutePage()
class MovieDetailPage extends StatefulWidget {
  MovieDetailPage({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late MovieDetailCubit movieDetailCubit;

  @override
  void initState() {
    movieDetailCubit = getIt<MovieDetailCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => movieDetailCubit
        ..fetchDetailedMovieById(
            Localizations.localeOf(context).languageCode, widget.id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movie Detail Page'),
        ),
        body: MoviesDetailBodyWidget(
          id: widget.id,
        ),
      ),
    );
  }
}
