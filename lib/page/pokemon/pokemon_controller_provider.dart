import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/page/pokemon/pokemon_controller.dart';
import 'package:flutter_pokemon/page/pokemon/pokemon_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pokemonStateControllerProvider =
    StateNotifierProvider.autoDispose<PokemonStateController, PokemonState>(
        (ref) => throw UnimplementedError());

final pokemonStateControllerProviderFamily = StateNotifierProvider.family
    .autoDispose<PokemonStateController, PokemonState, Pokemon>(
        (ref, data) => PokemonStateController(data: data));
