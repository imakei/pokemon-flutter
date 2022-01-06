import 'package:flutter_pokemon/pokemon_list/pokemon_list_controller.dart';
import 'package:flutter_pokemon/pokemon_list/pokemon_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pokemonListStateControllerProvider =
    StateNotifierProvider<PokemonListStateController, PokemonListState>(
        (ref) => PokemonListStateController());
