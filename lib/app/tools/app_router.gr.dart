// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super();

  @override
  final Map<String, PageFactory> pagesMap = {
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PopularMoviesRoute.name: (routeData) {
      final args = routeData.argsAs<PopularMoviesRouteArgs>(
          orElse: () => const PopularMoviesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PopularMoviesScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [MovieDetailPage]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [PopularMoviesScreen]
class PopularMoviesRoute extends PageRouteInfo<PopularMoviesRouteArgs> {
  PopularMoviesRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PopularMoviesRoute.name,
          args: PopularMoviesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PopularMoviesRoute';

  static const PageInfo<PopularMoviesRouteArgs> page =
      PageInfo<PopularMoviesRouteArgs>(name);
}

class PopularMoviesRouteArgs {
  const PopularMoviesRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PopularMoviesRouteArgs{key: $key}';
  }
}
