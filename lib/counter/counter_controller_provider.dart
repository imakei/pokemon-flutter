import 'package:flutter_pokemon/counter/counter_controller.dart';
import 'package:flutter_pokemon/counter/counter_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterStateControllerProvider =
    StateNotifierProvider<CounterStateController, CounterState>(
        (ref) => CounterStateController());
