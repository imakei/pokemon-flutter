import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/service/pokemon_service.dart';

import '../pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this._pokemonService);

  final PokemonService _pokemonService;

  @override
  Future<Pokemon> get({required int id}) async {
    return _pokemonService.get(id: id);
  }

  @override
  Future<List<Pokemon>> getList({required int page, int limit = 10}) {
    return _pokemonService.getList(page: page, limit: limit);
  }
}
