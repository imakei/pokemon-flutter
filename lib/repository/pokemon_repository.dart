import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/service/pokemon_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'impl/pokemon_repository_impl.dart';

final pokemonRepositoryProvider = Provider.autoDispose<PokemonRepository>(
  (ref) => PokemonRepositoryImpl(ref.read(pokemonServiceProvider)),
);

abstract class PokemonRepository {
  Future<Pokemon> get({required int id});

  Future<List<Pokemon>> getList({required int page, int limit = 10});
}
