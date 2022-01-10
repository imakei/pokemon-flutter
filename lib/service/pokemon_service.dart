import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/service/impl/pokemon_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String _baseUrl = "http://pokeapi.co/api/v2";

final pokemonServiceProvider = Provider.autoDispose<PokemonService>(
  (ref) => PokemonServiceImpl(_baseUrl),
);

abstract class PokemonService {
  Future<Pokemon> get({required int id});

  Future<List<Pokemon>> getList({required int page, required int limit});
}
