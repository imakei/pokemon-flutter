import 'package:flutter_pokemon/page/pokemon_list/pokemon_list_controller.dart';
import 'package:flutter_pokemon/page/pokemon_list/pokemon_list_state.dart';
import 'package:flutter_pokemon/repository/pokemon_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pokemonListStateControllerProvider = StateNotifierProvider.autoDispose<
        PokemonListStateController, PokemonListState>(
    (ref) => PokemonListStateController(ref.read(pokemonRepositoryProvider)));
