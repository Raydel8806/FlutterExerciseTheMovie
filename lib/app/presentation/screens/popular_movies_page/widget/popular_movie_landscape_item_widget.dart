import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';
import '../../../../tools/app_router.dart';

class PopularMovieLandscapeItemWidget extends StatelessWidget {
  final PopularMovieEntity popularMovieEntity;

  const PopularMovieLandscapeItemWidget(this.popularMovieEntity);

  @override
  Widget build(BuildContext context) {
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
                  '${dotenv.env['BASE_URL_IMAGES']!}${dotenv.env['IMAGE_SIZE_LOW_EXTREME']!}${popularMovieEntity.posterPath}',
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
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                              '${popularMovieEntity.voteAverage}  (${popularMovieEntity.voteCount} '
                              'votos)'),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Fecha de lanzamiento: ${popularMovieEntity.releaseDate}',
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Géneros: ${popularMovieEntity.genreIds.join(', ')}',
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
