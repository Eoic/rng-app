import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  final randomGenerator = Random();

  RandomizerPage({
    Key? key,
    required this.min,
    required this.max
  }) : super(key: key);

  final int min, max;

  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);

    return Scaffold(
      appBar: AppBar(
          title: Text("Randomizer [$min, $max]")
      ),
      body: Center(
        child: Text(
          generatedNumber.value?.toString() ?? 'Generate a number.',
          style: const TextStyle(
              fontSize: 36,
              color: Colors.white70
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => generatedNumber.value = randomGenerator.nextInt(max - min + 1) + min,
        label: const Text('Generate'),
        foregroundColor: Colors.white70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}