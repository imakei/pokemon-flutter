import 'package:flutter/material.dart';
import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/pokemon/pokemon_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonPage extends HookConsumerWidget {
  const PokemonPage({Key? key, this.data}) : super(key: key);
  final Pokemon? data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(overrides: [
      pokemonStateControllerProvider
          .overrideWithProvider(pokemonStateControllerProviderFamily(data!))
    ], child: PokeItem());
  }
}

class PokeItem extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref
        .watch(pokemonStateControllerProvider.select((value) => value.data))!;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              data.imageUrl,
              height: 100,
              width: 100,
            ),
            Text(
              data.name,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Chip(
              label: Text(data.type),
              backgroundColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
