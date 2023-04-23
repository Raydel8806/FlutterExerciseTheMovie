import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../presentation/screens/movie_detail_page/movie_detail_page.dart';
import '../presentation/screens/popular_movies_page/popular_movies_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PopularMoviesRoute.page, initial: true),
        AutoRoute(page: MovieDetailRoute.page),
      ];
}
