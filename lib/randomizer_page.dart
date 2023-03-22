import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/main.dart';

class RandomizerPage extends ConsumerWidget {
  final randomGenerator = Random();

  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Randomizer [${randomizer.min}, ${randomizer.max}]",
          )
      ),
      body: Center(
        child: Text(
          randomizer.generatedNumber?.toString() ?? 'Generate a number.',
          style: const TextStyle(
              fontSize: 36,
              color: Colors.white70
          ),
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(randomizerProvider).generateRandomNumber(),
        label: const Text('Generate'),
        foregroundColor: Colors.white70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}