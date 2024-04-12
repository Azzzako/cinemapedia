import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/actors/actors_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final actorsByMovieProvider = StateNotifierProvider<ActorsByMovieNotifier, Map<String, List<Actor>>>((ref) {
  final actorsRepository = ref.watch(actorRepositoryProvider);
    return ActorsByMovieNotifier(getActors: actorsRepository.getActorsByMovie);
});

typedef GetActoByMovieCallback = Future<List<Actor>>Function(String movieId);

class ActorsByMovieNotifier extends StateNotifier<Map<String,List<Actor>>> {


  final GetActoByMovieCallback getActors;

  ActorsByMovieNotifier({
    required this.getActors
  }): super ({});
  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;
    final actors = await getActors( movieId );

    state = {...state, movieId: actors};

  }

}