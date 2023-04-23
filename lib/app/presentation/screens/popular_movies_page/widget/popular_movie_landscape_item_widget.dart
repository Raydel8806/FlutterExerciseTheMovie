import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterexercisethemovie/app/presentation/extensions.dart';
import 'package:flutterexercisethemovie/l10n/l10n.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';
import '../../../../tools/app_router.dart';

class PopularMovieLandscapeItemWidget extends StatelessWidget {
  final PopularMovieEntity popularMovieEntity;

  const PopularMovieLandscapeItemWidget(this.popularMovieEntity);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
        onTap: () {
          context.router.push(MovieDetailRoute(id: popularMovieEntity.id));
        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.network(
                  '${dotenv.env['BASE_URL_IMAGES']!}${dotenv.env['IMAGE_SIZE_LOW']!}${popularMovieEntity.posterPath}',
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        popularMovieEntity.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        popularMovieEntity.overview,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        '${l10n.popularMovieLandscapeItemWidgetReleaseDate}: ${popularMovieEntity.releaseDate.toStringDate()}',
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 5.0),
                          Text('${popularMovieEntity.voteAverage}'),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                              '(${popularMovieEntity.voteCount} ${l10n.popularMovieLandscapeItemWidgetVotes})'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
