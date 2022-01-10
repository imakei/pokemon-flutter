import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:flutter_pokemon/page/pokemon/pokemon_page.dart';
import 'package:flutter_pokemon/page/pokemon_list/pokemon_list_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonListPage extends HookConsumerWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pokemonListStateControllerProvider.notifier);
    final list = ref.watch(
        pokemonListStateControllerProvider.select((value) => value.list));

    useEffect(() {
      controller.init();
    }, const []);

    return Scaffold(
      appBar: AppBar(
        // タイトルテキスト
        title: const Text('Pokemon'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => PokeListItem(data: list[index])),
    );
  }
}

class PokeListItem extends StatelessWidget {
  const PokeListItem({Key? key, required this.data}) : super(key: key);
  final Pokemon data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        data.imageUrl,
        height: 50,
        width: 50,
      ),
      title: Text(data.name),
      subtitle: Text(data.types[0]),
      onTap: () => {
        // TODO: Navigation
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => PokemonPage(data: data),
          ),
        ),
      },
    );
  }
}
