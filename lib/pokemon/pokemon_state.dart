import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_state.freezed.dart';

@freezed
abstract class PokemonState with _$PokemonState {
  const factory PokemonState({
    @Default(null) Pokemon? data,
  }) = _PokemonState;
}
