import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/page/pokemon_list/pokemon_list_state.dart';
import 'package:flutter_pokemon/repository/pokemon_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonListStateController extends StateNotifier<PokemonListState> {
  PokemonListStateController(this._repos) : super(const PokemonListState());

  final PokemonRepository _repos;

  Future<void> init() async {
    List<Pokemon> value = await _repos.getList(page: 0);
    state = state.copyWith(list: value);
  }
}
