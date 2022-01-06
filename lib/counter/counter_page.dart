import 'package:flutter/material.dart';
import 'package:flutter_pokemon/counter/counter_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterPage extends HookConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(counterStateControllerProvider.notifier);
    final data =
        ref.watch(counterStateControllerProvider.select((value) => value));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ボタンを押すと数字が増えていくよ',
            ),
            Text('数字が1ずつ増える : ${data.count}'),
            Text('数字が10ずつ増える : ${data.count10}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
