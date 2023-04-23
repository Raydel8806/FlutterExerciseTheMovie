import 'package:flutter/material.dart';

import '../../../../domain/entities/popular_movies/popular_movies_entity.dart';

class MovieItemWidget2 extends StatelessWidget {
  final PopularMovieEntity popularMovieEntity;

  const MovieItemWidget2(this.popularMovieEntity);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(popularMovieEntity.title),
      subtitle: Text(popularMovieEntity.releaseDate.toString()),
      childrenPadding: const EdgeInsets.all(16),
      leading: Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(popularMovieEntity.id.toString()),
      ),
      children: [
        Text(
          popularMovieEntity.overview,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        popularMovieEntity?.backdropPath == null
            ? Container()
            : Image.network(
                popularMovieEntity.backdropPath!,
                loadingBuilder: (context, widget, imageChunkEvent) {
                  return imageChunkEvent == null ? widget : LoadingWidget();
                },
                height: 300,
              ),
      ],
    );
  }
}

class MovieItemWidget extends StatelessWidget {
  final PopularMovieEntity popularMovieEntity;

  const MovieItemWidget(this.popularMovieEntity);

  @override
  Widget build(BuildContext context) {
    final movie = popularMovieEntity;
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.network(
              'https://image.tmdb.org/t/p/w92${movie.posterPath}',
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
                    movie.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    movie.overview,
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
                          '${movie.voteAverage}/10 (${movie.voteCount} votos)'),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Fecha de lanzamiento: ${movie.releaseDate}',
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Géneros: ${movie.genreIds.join(', ')}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
