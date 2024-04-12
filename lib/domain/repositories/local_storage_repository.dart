

import 'package:cinemapedia/domain/entities/movie.dart';

abstract class LocalStorageRepository {
  
  Future<void> toggleFavorite(Movie movie);
  Future<void> isMovieFavorute(int movieId);
  Future<List<Movie>> loadMovies({int limit = 5, offset = 0});

}