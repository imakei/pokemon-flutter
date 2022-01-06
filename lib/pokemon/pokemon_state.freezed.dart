// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

  _PokemonState call({Pokemon? data = null}) {
    return _PokemonState(
      data: data,
    );
  }
}

/// @nodoc
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  Pokemon? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
  $Res call({Pokemon? data});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ));
  }
}

/// @nodoc
abstract class _$PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$PokemonStateCopyWith(
          _PokemonState value, $Res Function(_PokemonState) then) =
      __$PokemonStateCopyWithImpl<$Res>;
  @override
  $Res call({Pokemon? data});
}

/// @nodoc
class __$PokemonStateCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$PokemonStateCopyWith<$Res> {
  __$PokemonStateCopyWithImpl(
      _PokemonState _value, $Res Function(_PokemonState) _then)
      : super(_value, (v) => _then(v as _PokemonState));

  @override
  _PokemonState get _value => super._value as _PokemonState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PokemonState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ));
  }
}

/// @nodoc

class _$_PokemonState implements _PokemonState {
  const _$_PokemonState({this.data = null});

  @JsonKey(defaultValue: null)
  @override
  final Pokemon? data;

  @override
  String toString() {
    return 'PokemonState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PokemonStateCopyWith<_PokemonState> get copyWith =>
      __$PokemonStateCopyWithImpl<_PokemonState>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState({Pokemon? data}) = _$_PokemonState;

  @override
  Pokemon? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonStateCopyWith<_PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}
