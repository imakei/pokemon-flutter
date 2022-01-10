import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/page/pokemon/pokemon_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonStateController extends StateNotifier<PokemonState> {
  PokemonStateController({required Pokemon data})
      : super(const PokemonState()) {
    state = state.copyWith(data: data);
  }
}
