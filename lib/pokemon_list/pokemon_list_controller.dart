import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/pokemon_list/pokemon_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String imageUrl =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png";
const String type = "⚡️electric";
const String name = "Pikachu";

class PokemonListStateController extends StateNotifier<PokemonListState> {
  PokemonListStateController() : super(const PokemonListState());

  Future<void> init() async {
    Future<List<Pokemon>> future = Future.delayed(
        const Duration(seconds: 1),
        () => List<Pokemon>.generate(
            1000, (index) => Pokemon(index, imageUrl, name, type)));
    List<Pokemon> value = await future;
    state = state.copyWith(list: value);
  }
}
